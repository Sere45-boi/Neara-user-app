import 'package:flutter/material.dart';
import 'package:sixam_mart/util/app_constants.dart';

ThemeData dark({Color color = const Color(0xFF9112BC)}) => ThemeData(
  fontFamily: AppConstants.fontFamily,
  primaryColor: color,

  // Accent
  secondaryHeaderColor: const Color(0xFFF97A00),

  // Disabled & hint
  disabledColor: const Color(0xFF8A8F98),
  brightness: Brightness.dark,
  hintColor: const Color(0xFF9A9A9A),

  // Card & surfaces
  cardColor: const Color(0xFF121212),
  shadowColor: Colors.black.withValues(alpha: 0.6),

  // Text
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Color(0xFFEDEDED)),
  ),

  // Buttons
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: color),
  ),

  // Color scheme
  colorScheme: ColorScheme.dark(
    primary: color,
    secondary: const Color(0xFFF97A00),
  ).copyWith(
    surface: const Color(0xFF121212),
    error: const Color(0xFFE53935),
  ),

  // Menus
  popupMenuTheme: const PopupMenuThemeData(
    color: Color(0xFF1A1A1A),
    surfaceTintColor: Color(0xFF1A1A1A),
  ),

  // Dialogs
  dialogTheme: const DialogThemeData(
    surfaceTintColor: Colors.transparent,
  ),

  // FAB
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(500),
    ),
  ),

  // Bottom bar
  bottomAppBarTheme: const BottomAppBarThemeData(
    surfaceTintColor: Colors.black,
    height: 60,
    padding: EdgeInsets.symmetric(vertical: 5),
  ),

  // Dividers & tabs
  dividerTheme: const DividerThemeData(
    thickness: 0.5,
    color: Color(0xFF2A2A2A),
  ),

  tabBarTheme: const TabBarThemeData(
    dividerColor: Colors.transparent,
  ),
);
