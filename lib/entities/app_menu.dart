import 'package:flutter/material.dart';

class AppMenu {
  String name;
  String route;
  Icon icon;
  Widget screen;

  AppMenu({
    required this.name,
    required this.route,
    required this.icon,
    required this.screen,
  });
}