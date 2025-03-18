import 'package:flutter/material.dart';

class NotificationFailureHelper {
  /// Menampilkan pesan error dengan background merah.
  static void showFailureMessage(
    BuildContext context, {
    required String message,
    Duration duration = const Duration(seconds: 2),
  }) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: Colors.red,
      duration: duration,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
