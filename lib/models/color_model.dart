import 'package:flutter/material.dart';

class ColorModel {
  final Gradient gradient;
  final Color color;
  final String svgPath;

  const ColorModel({
    required this.color,
    required this.gradient,
    required this.svgPath,
  });
}
