import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:muslim_daily/features/jadwal_sholat/domain/entities/jadwal_sholat.dart';
import 'package:muslim_daily/features/jadwal_sholat/presentation/bloc/jadwal_sholat_cubit/jadwal_sholat_cubit.dart';
import 'package:muslim_daily/widgets/loading/jadwal_sholat_shimmer_loader.dart';

class JadwalSholatPage extends StatefulWidget {
  const JadwalSholatPage({super.key});

  @override
  State<JadwalSholatPage> createState() => JadwalSholatPageState();
}

class JadwalSholatPageState extends State<JadwalSholatPage> {
  Position? _currentPosition;
  String? _currentCity;
  bool _gpsDenied = false;

  @override
  void initState() {
    super.initState();
    fetchJadwal();
  }

  Future<void> fetchJadwal() async {
    try {
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }

      if (permission == LocationPermission.denied || permission == LocationPermission.deniedForever) {
        setState(() {
          _gpsDenied = true;
        });
        return;
      }

      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      setState(() {
        _currentPosition = position;
      });

      final placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);
      if (placemarks.isNotEmpty) {
        setState(() {
          _currentCity = placemarks.first.locality;
        });
      }

      context.read<JadwalSholatCubit>().getJadwalSholat(
            latitude: position.latitude,
            longitude: position.longitude,
          );
    } catch (e) {
      debugPrint("Lokasi error: $e");
      setState(() {
        _gpsDenied = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_gpsDenied) return _buildGpsErrorCard();

    return BlocBuilder<JadwalSholatCubit, JadwalSholatState>(
      builder: (context, state) {
        return state.maybeWhen(
          loadSuccess: (jadwal) => _buildJadwalCard(jadwal),
          orElse: () => _buildLoadingCard(),
        );
      },
    );
  }

  Widget _buildJadwalCard(JadwalSholat jadwal) {
    final tanggal = jadwal.date?.readable ?? '-';
    final timezone = jadwal.meta?.timezone ?? '-';

    final lat = _currentPosition?.latitude.toStringAsFixed(5);
    final long = _currentPosition?.longitude.toStringAsFixed(5);
    final lokasi = _currentCity ?? (lat != null && long != null ? '$lat, $long' : '-');

    final nextPrayer = _getNextPrayerCountdown(jadwal);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Jadwal Sholat Hari Ini", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text('$tanggal • ($timezone)', style: const TextStyle(fontSize: 12, color: Colors.grey)),
            Text('Lokasi saat ini: $lokasi', style: const TextStyle(fontSize: 12, color: Colors.grey)),
            if (nextPrayer != null) ...[
              const SizedBox(height: 12),
              Text(
                '⏳ $nextPrayer',
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.teal),
              ),
            ],
            const SizedBox(height: 16),
            _buildTile("Subuh", jadwal.timing?.fajr ?? '-'),
            _buildTile("Dzuhur", jadwal.timing?.dhuhr ?? '-'),
            _buildTile("Ashar", jadwal.timing?.asr ?? '-'),
            _buildTile("Maghrib", jadwal.timing?.maghrib ?? '-'),
            _buildTile("Isya", jadwal.timing?.isha ?? '-'),
          ],
        ),
      ),
    );
  }

  String? _getNextPrayerCountdown(JadwalSholat jadwal) {
    final now = DateTime.now();
    final times = {
      "Subuh": jadwal.timing?.fajr,
      "Dzuhur": jadwal.timing?.dhuhr,
      "Ashar": jadwal.timing?.asr,
      "Maghrib": jadwal.timing?.maghrib,
      "Isya": jadwal.timing?.isha,
    };

    for (final entry in times.entries) {
      final waktu = entry.value;
      if (waktu == null) continue;

      final parts = waktu.split(':');
      if (parts.length < 2) continue;

      final hour = int.tryParse(parts[0]) ?? 0;
      final minute = int.tryParse(parts[1]) ?? 0;
      final targetTime = DateTime(now.year, now.month, now.day, hour, minute);

      if (targetTime.isAfter(now)) {
        final durasi = targetTime.difference(now);
        return '${entry.key} dalam ${durasi.inHours}j ${durasi.inMinutes.remainder(60)}m';
      }
    }

    return null;
  }

  Widget _buildGpsErrorCard() {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.red.shade300, width: 1.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'Aktifkan GPS kamu untuk menampilkan jadwal yang akurat',
          style: TextStyle(
            color: Colors.redAccent,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildLoadingCard() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: SizedBox(
        height: 200,
        child: JadwalSholatShimmerLoader(),
      ),
    );
  }

  Widget _buildTile(String title, String waktu) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(waktu),
        ],
      ),
    );
  }
}
