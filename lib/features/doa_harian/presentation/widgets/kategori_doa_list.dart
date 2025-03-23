import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_daily/features/doa_harian/presentation/bloc/doa_harian_bloc/doa_harian_bloc.dart';
import 'package:muslim_daily/features/doa_harian/presentation/widgets/kategori_doa_card.dart';

class KategoriDoaList extends StatelessWidget {
  final String? selectedCategory;
  final void Function(String?) onSelected;

  const KategoriDoaList({
    super.key,
    required this.selectedCategory,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoaHarianBloc, DoaHarianState>(
      builder: (context, state) {
        return state.maybeWhen(
          loadSuccess: (list, _, __) {
            final sources = list!
                .map((e) => e.source?.trim())
                .where((e) => e != null && e.isNotEmpty)
                .toSet()
                .toList();

            return SizedBox(
              height: 75.h,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                scrollDirection: Axis.horizontal,
                itemCount: sources.length,
                separatorBuilder: (_, __) => SizedBox(width: 12.w),
                itemBuilder: (context, index) {
                  final source = sources[index]!;
                  final isSelected = source == selectedCategory;

                  return GestureDetector(
                    onTap: () {
                      onSelected(isSelected ? null : source);
                    },
                    child: KategoriDoaCard(
                      label: source,
                      selected: isSelected,
                    ),
                  );
                },
              ),
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
