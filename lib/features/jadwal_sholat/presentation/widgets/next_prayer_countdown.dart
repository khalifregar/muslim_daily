import 'dart:async';
import 'package:flutter/material.dart';
import 'package:muslim_daily/features/jadwal_sholat/domain/entities/jadwal_sholat.dart';

class NextPrayerCountdown extends StatefulWidget {
  final JadwalSholat jadwal;

  const NextPrayerCountdown({super.key, required this.jadwal});

  @override
  State<NextPrayerCountdown> createState() => _NextPrayerCountdownState();
}

class _NextPrayerCountdownState extends State<NextPrayerCountdown> {
  late Timer _timer;
  Duration? _remaining;
  String? _prayerName;

  @override
  void initState() {
    super.initState();
    _calculateRemainingTime();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      _calculateRemainingTime();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _calculateRemainingTime() {
    final now = DateTime.now();
    final times = {
      "Subuh": widget.jadwal.timing?.fajr,
      "Dzuhur": widget.jadwal.timing?.dhuhr,
      "Ashar": widget.jadwal.timing?.asr,
      "Maghrib": widget.jadwal.timing?.maghrib,
      "Isya": widget.jadwal.timing?.isha,
    };

    for (final entry in times.entries) {
      final waktu = entry.value;
      if (waktu == null) continue;

      final parts = waktu.split(':');
      if (parts.length < 2) continue;

      final hour = int.tryParse(parts[0]) ?? 0;
      final minute = int.tryParse(parts[1]) ?? 0;

      final target = DateTime(now.year, now.month, now.day, hour, minute);
      if (target.isAfter(now)) {
        setState(() {
          _remaining = target.difference(now);
          _prayerName = entry.key;
        });
        return;
      }
    }

    setState(() {
      _remaining = null;
      _prayerName = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_remaining == null || _prayerName == null) return const SizedBox();

    final jam = _remaining!.inHours.toString().padLeft(2, '0');
    final menit = _remaining!.inMinutes.remainder(60).toString().padLeft(2, '0');
    final detik = _remaining!.inSeconds.remainder(60).toString().padLeft(2, '0');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          '⏳ $_prayerName dalam',
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: Color(0xFF008080),
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 14),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
          margin: const EdgeInsets.only(bottom: 28),
          decoration: BoxDecoration(
            color: const Color(0xFFFAFAFA),
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [Color(0xFFE0F7FA), Color(0xFFFFFFFF)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            border: Border.all(color: Colors.white, width: 1.2),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.07),
                blurRadius: 12,
                offset: const Offset(0, 6),
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildTimeBox(jam, "Jam"),
              const Text(":", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              _buildTimeBox(menit, "Menit"),
              const Text(":", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              _buildTimeBox(detik, "Detik"),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTimeBox(String value, String label) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            border: Border.all(color: Colors.teal.shade100),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                offset: const Offset(0, 3),
              )
            ],
          ),
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(
            fontSize: 13,
            color: Color(0xFF00796B),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
