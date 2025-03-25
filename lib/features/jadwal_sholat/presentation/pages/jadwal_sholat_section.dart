import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:muslim_daily/features/jadwal_sholat/domain/entities/jadwal_sholat.dart';
import 'package:muslim_daily/features/jadwal_sholat/presentation/bloc/jadwal_sholat_cubit/jadwal_sholat_cubit.dart';
import 'package:muslim_daily/widgets/loading/jadwal_sholat_shimmer_loader.dart';
import 'package:muslim_daily/features/jadwal_sholat/presentation/widgets/next_prayer_countdown.dart';

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

      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
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

      final placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

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

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xFFFAFAFA),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(color: Colors.grey.shade300, width: 1),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 4),
          const Text(
            "Waktu Sholat Berikutnya",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.teal),
          ),
          const SizedBox(height: 12),
          NextPrayerCountdown(jadwal: jadwal),
          const SizedBox(height: 28),
          Container(
            padding: const EdgeInsets.only(bottom: 6),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.calendar_today_outlined, size: 16, color: Colors.teal),
                    const SizedBox(width: 6),
                    Text(
                      '$tanggal • $timezone',
                      style: const TextStyle(fontSize: 13, color: Colors.black54),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.location_on, color: Colors.teal, size: 18),
                    const SizedBox(width: 4),
                    Text(
                      lokasi,
                      style: const TextStyle(fontSize: 13, color: Colors.black87),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          ..._buildSholatTiles(jadwal),
        ],
      ),
    );
  }

  List<Widget> _buildSholatTiles(JadwalSholat jadwal) {
    final List<Map<String, String?>> data = [
      {"Subuh": jadwal.timing?.fajr},
      {"Dzuhur": jadwal.timing?.dhuhr},
      {"Ashar": jadwal.timing?.asr},
      {"Maghrib": jadwal.timing?.maghrib},
      {"Isya": jadwal.timing?.isha},
    ];

    return data.map((entry) {
      final title = entry.keys.first;
      final time = entry.values.first ?? '-';
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
            Text(time, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.teal)),
          ],
        ),
      );
    }).toList();
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
}