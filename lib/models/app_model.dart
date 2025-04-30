import 'package:flutter/material.dart';

class AppModel {
  final String title;
  final String? assetPath;
  final IconData? icon;
  final Color color;
  final Widget? screen;
  final String? link;

  const AppModel({
    required this.title,
    required this.color,
    this.assetPath,
    this.icon,
    this.link,
    this.screen,
  }) : assert(icon == null || assetPath == null);
}
