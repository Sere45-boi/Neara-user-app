import 'package:flutter/material.dart';
import 'package:sixam_mart/util/app_constants.dart';

ThemeData dark({
  Color color = const Color(0xFFF97A00), // Brand Orange
}) => ThemeData(
  fontFamily: AppConstants.fontFamily,
  primaryColor: color,

  // Accent Purple
  secondaryHeaderColor: const Color(0xFF9112BC),

  // Disabled & hint
  disabledColor: const Color(0xFF8A8F98),
  brightness: Brightness.dark,
  hintColor: const Color(0xFFB5B5B5),

  // Card & surfaces (deep modern gray)
  cardColor: const Color(0xFF111111),
  shadowColor: Colors.black.withValues(alpha: 0.6),

  // Text
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Color(0xFFE8E8E8)),
  ),

  // Buttons
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Color(0xFFF97A00), // Orange buttons / links
    ),
  ),

  // Color scheme
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFFF97A00),
    secondary: Color(0xFF9112BC),
    surface: Color(0xFF121212),
    error: Color(0xFFFF4A4A), // Soft red for dark theme
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
    backgroundColor: const Color(0xFFF97A00),
    foregroundColor: Colors.white,
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
    labelColor: Color(0xFFF97A00),     // active tab = orange
    unselectedLabelColor: Color(0xFF777777),
    indicatorColor: Color(0xFFF97A00),
  ),
);
