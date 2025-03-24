import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/domain/entities/ayat.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/presentation/bloc/alquran_read_cubit/alquran_read_cubit.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/presentation/pages/widget/receating_alquran.dart';
import 'package:muslim_daily/injection.dart';
import 'package:muslim_daily/widgets/loading/shimmer.dart';

class SurahPageRead extends StatefulWidget {
  final dynamic surah;

  const SurahPageRead({super.key, required this.surah});

  @override
  State<SurahPageRead> createState() => _SurahPageReadState();
}

class _SurahPageReadState extends State<SurahPageRead> {
  late final AlquranReadCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = getIt<AlquranReadCubit>();

    /// ✅ Tampilkan cache dulu jika ada, tanpa loading
    final cached = _cubit.getCached(widget.surah.nomor);
    if (cached != null) {
      _cubit.emit(AlquranReadState.loadSuccess(cached));
    } else {
      _cubit.getSurahRead(widget.surah.nomor);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: Scaffold(
        backgroundColor: const Color(0xFFFAF3E0),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            widget.surah.namaLatin ?? "Surah",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: BlocBuilder<AlquranReadCubit, AlquranReadState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox.shrink(),
              loadInProgress: () => const SurahShimmerLoader(),
              loadFailure: (f) => Center(child: Text(f.message ?? "Gagal memuat data")),
              loadSuccess: (surahRead) => SingleChildScrollView(
                padding: EdgeInsets.only(bottom: 32.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RecitingAlquran(
                      audioUrl: surahRead.audioFull['01'],
                      surah: widget.surah,
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: SurahAyatList(ayat: surahRead.ayat),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class SurahAyatList extends StatelessWidget {
  final List<Ayat> ayat;

  const SurahAyatList({super.key, required this.ayat});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: ayat.length,
      separatorBuilder: (_, __) => SizedBox(height: 16.h),
      itemBuilder: (context, index) {
        final e = ayat[index];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: 40.w,
                height: 40.w,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/icon/icon_ayat.png',
                      width: 40.w,
                      height: 40.w,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      '${e.nomorAyat ?? ''}',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 6.h),
            Text(
              e.teksArab ?? '',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                height: 1.8,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              e.teksLatin ?? '',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 14.sp,
                fontStyle: FontStyle.italic,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 6.h),
            Text(
              e.teksIndonesia ?? '',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            const Divider(thickness: 0.5, color: Colors.grey),
          ],
        );
      },
    );
  }
}
