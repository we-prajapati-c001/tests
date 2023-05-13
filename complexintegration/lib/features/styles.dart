import 'package:flutter/material.dart';

abstract class AppStyle {
  static const primaryColor = Colors.deepPurple;

  static const EdgeInsets paddingAll4 = EdgeInsets.all(4.0);
  static const EdgeInsets paddingAll8 = EdgeInsets.all(8.0);
  static const EdgeInsets paddingAll16 = EdgeInsets.all(16.0);
  static const EdgeInsets paddingAll24 = EdgeInsets.all(24.0);
  static const EdgeInsets paddingAll32 = EdgeInsets.all(32.0);
}

final ButtonStyle primaryIconButtonStyle = IconButton.styleFrom(
  backgroundColor: AppStyle.primaryColor,
  foregroundColor: Colors.white,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  padding: AppStyle.paddingAll16,
);
