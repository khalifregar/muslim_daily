import 'package:flutter/material.dart';

class TafsirPage extends StatelessWidget {
  final String surahName;
  final String tafsir;

  const TafsirPage({
    Key? key,
    required this.surahName,
    required this.tafsir,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tafsir $surahName"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            tafsir,
            textAlign: TextAlign.justify,
            style: const TextStyle(fontSize: 16, color: Colors.black87),
          ),
        ),
      ),
    );
  }
}
