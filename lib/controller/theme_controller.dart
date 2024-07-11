import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController{
  final _themeMode = ThemeMode.system.obs;

  ThemeMode get themeMode => _themeMode.value;

  void switchTheme(ThemeMode mode) {
    _themeMode.value = mode;
  }
}