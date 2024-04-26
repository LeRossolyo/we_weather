import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  ThemeData light = ThemeData(
    colorSchemeSeed: const Color.fromARGB(255, 234, 93, 11),
    textTheme: GoogleFonts.belanosimaTextTheme(
    )
  );

  ThemeData dark = ThemeData(
    colorSchemeSeed: const Color.fromARGB(255, 52, 192, 126),
  );
}