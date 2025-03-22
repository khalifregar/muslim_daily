import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:just_audio/just_audio.dart';

class RecitingAlquran extends StatefulWidget {
  final String? audioUrl;
  final dynamic surah;

  const RecitingAlquran({
    super.key,
    required this.audioUrl,
    required this.surah,
  });

  @override
  State<RecitingAlquran> createState() => _RecitingAlquranState();
}

class _RecitingAlquranState extends State<RecitingAlquran> {
  late final AudioPlayer _audioPlayer;
  bool _isInitialized = false;
  bool _isPlaying = false;
  Duration _position = Duration.zero;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();

    _audioPlayer.playerStateStream.listen((state) {
      if (!mounted) return;

      setState(() {
        _isPlaying = state.playing;
      });

      if (state.processingState == ProcessingState.completed) {
        _audioPlayer.seek(Duration.zero);
        _audioPlayer.pause();
      }
    });

    _audioPlayer.positionStream.listen((position) {
      if (mounted) {
        setState(() {
          _position = position;
        });
      }
    });
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  Future<void> _togglePlayPause() async {
    final url = widget.audioUrl;
    if (url == null) return;

    try {
      if (_isPlaying) {
        await _audioPlayer.pause();
      } else {
        if (!_isInitialized) {
          await _audioPlayer.setUrl(url);
          _isInitialized = true;
        }
        await _audioPlayer.play();
      }
    } catch (e) {
      debugPrint("Gagal memutar audio: $e");
    }
  }

  String _formatDuration(Duration duration) {
    final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: const Color(0xFF00966C),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top: Judul dan Tombol Play/Pause
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  widget.surah?.namaLatin ?? 'Surah',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              GestureDetector(
                onTap: _togglePlayPause,
                child: Container(
                  width: 48.w,
                  height: 48.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Icon(
                    _isPlaying ? Icons.pause : Icons.play_arrow,
                    size: 24.sp,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 12.h),

          // Bottom: Durasi
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              _formatDuration(_position),
              style: TextStyle(
                fontSize: 13.sp,
                color: Colors.white70,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
