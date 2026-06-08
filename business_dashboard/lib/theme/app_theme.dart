import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const cream      = Color(0xFFF5F0E8);
  static const parchment  = Color(0xFFEDE7D9);
  static const ink        = Color(0xFF1A1714);
  static const inkLight   = Color(0xFF6B6560);
  static const inkFaint   = Color(0xFFB5AFA8);
  static const coral      = Color(0xFFD4623A);
  static const coralLight = Color(0xFFF2E0D8);
  static const green      = Color(0xFF2D6A4F);
  static const greenLight = Color(0xFFD8EDDF);
  static const amber      = Color(0xFF92600A);
  static const amberLight = Color(0xFFFCEFCB);
  static const red        = Color(0xFF922B21);
  static const redLight   = Color(0xFFFADDD9);
  static const border     = Color(0xFFD6CFC5);
  static const borderDark = Color(0xFF9E9890);
}

class AppTheme {
  static ThemeData get theme => ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.cream,
    colorScheme: const ColorScheme.light(
      primary: AppColors.coral,
      surface: AppColors.cream,
      onPrimary: Colors.white,
      onSurface: AppColors.ink,
    ),
    textTheme: GoogleFonts.dmSansTextTheme().copyWith(
      displayLarge: GoogleFonts.playfairDisplay(color: AppColors.ink, fontWeight: FontWeight.w700),
      displayMedium: GoogleFonts.playfairDisplay(color: AppColors.ink, fontWeight: FontWeight.w600),
      headlineLarge: GoogleFonts.playfairDisplay(color: AppColors.ink, fontWeight: FontWeight.w700),
      headlineMedium: GoogleFonts.playfairDisplay(color: AppColors.ink, fontWeight: FontWeight.w600),
      titleLarge: GoogleFonts.dmSans(color: AppColors.ink, fontWeight: FontWeight.w600),
      bodyMedium: GoogleFonts.dmSans(color: AppColors.inkLight),
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColors.ink,
      indicatorColor: AppColors.coral,
      labelTextStyle: WidgetStateProperty.all(
        GoogleFonts.dmSans(fontSize: 11, color: AppColors.inkFaint),
      ),
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) return const IconThemeData(color: Colors.white);
        return const IconThemeData(color: AppColors.inkFaint);
      }),
    ),
    dividerColor: AppColors.border,
  );
}
