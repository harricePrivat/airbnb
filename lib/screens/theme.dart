import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AirbnbTheme {
  // Couleurs Airbnb
  static const Color airbnbRed = Color(0xFFFF385C);
  static const Color airbnbDarkGray = Color(0xFF222222);
  static const Color airbnbGray = Color(0xFF717171);
  static const Color airbnbLightGray = Color(0xFFF7F7F7);
  static const Color airbnbBorder = Color(0xFFDDDDDD);
  static const Color airbnbBlack = Color(0xFF000000);
  static const Color airbnbWhite = Color(0xFFFFFFFF);

  static final ThemeData theme = ThemeData(
    // Couleur primaire Airbnb
    primaryColor: airbnbRed,
    colorScheme: ColorScheme.fromSeed(
      seedColor: airbnbRed,
      primary: airbnbRed,
      secondary: airbnbDarkGray,
      surface: airbnbWhite,
      // background: airbnbWhite,
      onPrimary: airbnbWhite,
      onSecondary: airbnbWhite,
      onSurface: airbnbDarkGray,
      // onBackground: airbnbDarkGray,
    ),

    // Configuration des icônes
    iconTheme: const IconThemeData(color: airbnbDarkGray, size: 24.0),

    // AppBar dans le style Airbnb
    appBarTheme: AppBarTheme(
      backgroundColor: airbnbWhite,
      foregroundColor: airbnbDarkGray,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: airbnbDarkGray,
      ),
      iconTheme: const IconThemeData(color: airbnbDarkGray),
    ),

    // Navigation bar
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: airbnbRed,
      unselectedItemColor: airbnbGray,
      backgroundColor: airbnbWhite,
      elevation: 8.0,
      type: BottomNavigationBarType.fixed,
    ),

    // Configuration des boutons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: airbnbRed,
        foregroundColor: airbnbWhite,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        textStyle: GoogleFonts.poppins(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: airbnbDarkGray,
        side: const BorderSide(color: airbnbBorder),
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        textStyle: GoogleFonts.poppins(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),

    // Configuration des cartes
    cardTheme: CardThemeData(
      color: airbnbWhite,
      elevation: 2.0,
      shadowColor: airbnbGray.withValues(alpha: 0.2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
    ),

    // Configuration des champs de texte
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: airbnbBorder),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: airbnbBorder),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: airbnbRed, width: 2.0),
      ),
      fillColor: airbnbWhite,
      filled: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 16.0,
      ),
    ),

    // Typographie Airbnb
    textTheme: TextTheme(
      // Titre principal - utilisé pour les grands titres
      displayLarge: GoogleFonts.poppins(
        fontSize: 32.0,
        fontWeight: FontWeight.w800,
        color: airbnbBlack,
        letterSpacing: -0.5,
      ),

      // Sous-titre principal
      displayMedium: GoogleFonts.poppins(
        fontSize: 26.0,
        fontWeight: FontWeight.w700,
        color: airbnbDarkGray,
        letterSpacing: -0.3,
      ),

      // Titre de section
      displaySmall: GoogleFonts.poppins(
        fontSize: 22.0,
        fontWeight: FontWeight.w600,
        color: airbnbDarkGray,
      ),

      // Titre de card/liste
      headlineLarge: GoogleFonts.poppins(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        color: airbnbDarkGray,
      ),

      // Sous-titre de card
      headlineMedium: GoogleFonts.poppins(
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        color: airbnbDarkGray,
      ),

      // Titre de propriété/logement
      titleLarge: GoogleFonts.poppins(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        color: airbnbDarkGray,
      ),

      // Sous-titre/info secondaire
      titleMedium: GoogleFonts.poppins(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: airbnbGray,
      ),

      // Petits labels
      titleSmall: GoogleFonts.poppins(
        fontSize: 12.0,
        fontWeight: FontWeight.w500,
        color: airbnbGray,
        letterSpacing: 0.5,
      ),

      // Corps de texte principal
      bodyLarge: GoogleFonts.poppins(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        color: airbnbDarkGray,
        height: 1.5,
      ),

      // Corps de texte secondaire
      bodyMedium: GoogleFonts.poppins(
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
        color: airbnbDarkGray,
        height: 1.4,
      ),

      // Petit texte/captions
      bodySmall: GoogleFonts.poppins(
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
        color: airbnbGray,
        height: 1.3,
      ),

      // Labels de boutons
      labelLarge: GoogleFonts.poppins(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        color: airbnbWhite,
      ),
    ),

    // Configuration générale
    scaffoldBackgroundColor: airbnbWhite,
    dividerColor: airbnbBorder,
    useMaterial3: true,
  );

  // Couleurs personnalisées pour des cas spécifiques
  static const Color successColor = Color(0xFF00A699);
  static const Color warningColor = Color(0xFFFFB400);
  static const Color errorColor = Color(0xFFC13515);
  static const Color infoColor = Color(0xFF0770DE);
}
