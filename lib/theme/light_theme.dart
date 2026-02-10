import 'package:flutter/material.dart';
import 'package:sixam_mart/util/app_constants.dart';

ThemeData light({
  Color color = const Color(0xFFF97A00), // Brand Orange
}) =>
    ThemeData(
      fontFamily: AppConstants.fontFamily,
      primaryColor: color,

      // Accent – Brand Purple
      secondaryHeaderColor: const Color(0xFF9112BC),

      // Disabled & hints
      disabledColor: const Color(0xFFB0B3B8),
      brightness: Brightness.light,
      hintColor: const Color(0xFF9CA3AF),

      // Surfaces
      cardColor: Colors.white,
      shadowColor: Colors.black.withValues(alpha: 0.04),

      // Buttons
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: const Color(0xFFF97A00), // Orange links/buttons
        ),
      ),

      // Color scheme
      colorScheme: const ColorScheme.light(
        primary: Color(0xFFF97A00), // Orange
        secondary: Color(0xFF9112BC), // Purple
        surface: Color(0xFFFCFCFC),
        error: Color(0xFFE63946), // Soft red
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
        backgroundColor: const Color(0xFFF97A00),
        foregroundColor: Colors.white,
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
        labelColor: Color(0xFFF97A00), // Active tab = orange
        unselectedLabelColor: Color(0xFF6B7280),
        indicatorColor: Color(0xFFF97A00),
      ),
    );
