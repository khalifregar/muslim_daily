import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
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
    fetchJadwalSholat();
  }

  Future<void> fetchJadwalSholat() async {
    try {
      var permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }

      if (permission == LocationPermission.denied || permission == LocationPermission.deniedForever) {
        setState(() => _gpsDenied = true);
        return;
      }

      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      final placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      setState(() {
        _currentPosition = position;
        _currentCity = placemarks.isNotEmpty ? placemarks.first.locality : null;
      });

      context.read<JadwalSholatCubit>().getJadwalSholat(
            latitude: position.latitude,
            longitude: position.longitude,
          );
    } catch (e) {
      debugPrint("Lokasi error: $e");
      setState(() => _gpsDenied = true);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_gpsDenied) return _buildGpsErrorCard();

    return BlocBuilder<JadwalSholatCubit, JadwalSholatState>(
      builder: (context, state) {
        return state.maybeWhen(
          loadSuccess: (jadwal) => _buildJadwalCard(jadwal),
          orElse: _buildLoadingCard,
        );
      },
    );
  }

  Widget _buildJadwalCard(JadwalSholat jadwal) {
    final tanggal = jadwal.date?.readable ?? '-';
    final lokasi = _currentCity ?? '-';

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(tanggal, lokasi),
          const SizedBox(height: 20),
          ..._buildSholatList(jadwal),
        ],
      ),
    );
  }

  Widget _buildHeader(String tanggal, String lokasi) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Icons.calendar_today_outlined, size: 16, color: Colors.teal),
            const SizedBox(width: 6),
            Text(
              tanggal,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.teal),
            ),
          ],
        ),
        Row(
          children: [
            const Icon(Icons.location_on_outlined, size: 16, color: Colors.teal),
            const SizedBox(width: 6),
            Text(
              lokasi,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.teal),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ],
    );
  }

  List<Widget> _buildSholatList(JadwalSholat jadwal) {
    final times = [
      {'title': 'Subuh', 'time': jadwal.timing?.fajr},
      {'title': 'Dzuhur', 'time': jadwal.timing?.dhuhr},
      {'title': 'Ashar', 'time': jadwal.timing?.asr},
      {'title': 'Maghrib', 'time': jadwal.timing?.maghrib},
      {'title': 'Isya', 'time': jadwal.timing?.isha},
    ];

    return List.generate(times.length, (index) {
      final title = times[index]['title']!;
      final time = times[index]['time'] ?? '-';

      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                Text(
                  time,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
              ],
            ),
          ),
          if (index < times.length - 1)
            const Divider(height: 1, thickness: 1, color: Color(0xFFE0E0E0)),
        ],
      );
    });
  }

  Widget _buildGpsErrorCard() {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.red.shade300, width: 1.5),
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
