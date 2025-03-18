import 'package:flutter/material.dart';

class NotificationSuccessHelper {
  /// Menampilkan pesan sukses dengan background hijau.
  static void showSuccessMessage(
    BuildContext context, {
    required String message,
    Duration duration = const Duration(seconds: 2),
  }) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: Colors.green,
      duration: duration,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
