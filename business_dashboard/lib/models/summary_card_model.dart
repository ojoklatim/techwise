import 'package:flutter/widgets.dart';

class SummaryCardModel {
  final String title;
  final String value;
  final String subtitle;
  final int colorHex;
  final IconData icon;

  SummaryCardModel({
    required this.title,
    required this.value,
    required this.subtitle,
    required this.colorHex,
    required this.icon,
  });
}
