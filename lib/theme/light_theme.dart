import 'package:flutter/material.dart';
import 'package:sixam_mart/util/app_constants.dart';

ThemeData light({Color color = const Color(0xFF9112BC)}) => ThemeData(
  fontFamily: AppConstants.fontFamily,
  primaryColor: color,

  // Accent
  secondaryHeaderColor: const Color(0xFFF97A00),

  // Disabled & hints
  disabledColor: const Color(0xFF9CA3AF),
  brightness: Brightness.light,
  hintColor: const Color(0xFF9CA3AF),

  // Surfaces
  cardColor: Colors.white,
  shadowColor: Colors.black.withValues(alpha: 0.03),

  // Buttons
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: color),
  ),

  // Color scheme
  colorScheme: ColorScheme.light(
    primary: color,
    secondary: const Color(0xFFF97A00),
  ).copyWith(
    surface: const Color(0xFFFCFCFC),
    error: const Color(0xFFE63946),
  ),

  // Menus & dialogs
  popupMenuTheme: const PopupMenuThemeData(
    color: Colors.white,
    surfaceTintColor: Colors.white,
  ),

  dialogTheme: const DialogThemeData(
    surfaceTintColor: Colors.white,
  ),

  // FAB
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(500),
    ),
  ),

  // Bottom bar
  bottomAppBarTheme: const BottomAppBarThemeData(
    surfaceTintColor: Colors.white,
    height: 60,
    padding: EdgeInsets.symmetric(vertical: 5),
  ),

  // Dividers & tabs
  dividerTheme: const DividerThemeData(
    thickness: 0.2,
    color: Color(0xFFE5E7EB),
  ),

  tabBarTheme: const TabBarThemeData(
    dividerColor: Colors.transparent,
  ),
);
