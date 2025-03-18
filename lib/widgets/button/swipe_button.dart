import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muslim_daily/core/constant/const_color.dart';

class SwipeButton extends StatefulWidget {
  final VoidCallback onComplete;

  const SwipeButton({required this.onComplete, super.key});

  @override
  State<SwipeButton> createState() => _SwipeButtonState();
}

class _SwipeButtonState extends State<SwipeButton> with SingleTickerProviderStateMixin {
  double _dragPosition = 0.0;
  bool _isCompleted = false;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  void _onHorizontalDragUpdate(DragUpdateDetails details) {
    setState(() {
      _dragPosition += details.primaryDelta!;
      _dragPosition = _dragPosition.clamp(0.0, 280.w); // Batas swipe maksimal
    });
  }

  void _onHorizontalDragEnd(DragEndDetails details) {
    if (_dragPosition > 200.w) { // Jika geser lebih dari 80%
      setState(() {
        _isCompleted = true;
        _dragPosition = 280.w;
      });

      Future.delayed(const Duration(milliseconds: 300), () {
        widget.onComplete();
      });
    } else {
      _resetSwipe();
    }
  }

  void _resetSwipe() {
    _animationController.forward(from: 0.0);
    setState(() {
      _dragPosition = 0.0;
      _isCompleted = false;
    });
  }

  /// **Mengubah teks berdasarkan progress swipe**
  String _getSwipeText() {
    if (_isCompleted) {
      return "Bismillah";
    } else if (_dragPosition > 180.w) {
      return "Bismillah, Mulai Istiqomah";
    } else if (_dragPosition > 80.w) {
      return "Geser terus...";
    } else {
      return "Bismillah, Mulai";
    }
  }

  /// **Mengubah warna berdasarkan progress swipe**
  Color _getSwipeColor() => (_dragPosition > 80.w) ? AppColors.primaryGreenDark : AppColors.primaryGreen;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: Stack(
        children: [
          // **Background utama tombol dengan perubahan warna**
          AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            width: double.infinity,
            height: 50.h,
            decoration: BoxDecoration(
              color: _getSwipeColor(),
              borderRadius: BorderRadius.circular(12.r),
            ),
            alignment: Alignment.center,
            child: Text(
              _getSwipeText(),
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.buttonTextWhite,
              ),
            ),
          ),

          // **Panah geser (>>>) ikut bergerak dengan area lebih besar**
          AnimatedPositioned(
            duration: const Duration(milliseconds: 150),
            left: _dragPosition,
            child: GestureDetector(
              onHorizontalDragUpdate: _onHorizontalDragUpdate,
              onHorizontalDragEnd: _onHorizontalDragEnd,
              child: Container(
                width: 80.w, // **Area sentuh lebih luas**
                height: 50.h,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => Padding(
                      padding: EdgeInsets.only(right: 3.w),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
