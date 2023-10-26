import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme{
  static TextTheme lightTextTheme = TextTheme(
          displayMedium: GoogleFonts.montserrat(
            color: Colors.black87,
          ),
          bodyLarge: GoogleFonts.poppins(
            color: Colors.black54,
            fontSize: 24.0,
          )
        );
  static TextTheme darkTextTheme = TextTheme(
          displayMedium: GoogleFonts.montserrat(
            color: Colors.white70,
          ),
          bodyLarge: GoogleFonts.poppins(
            color: Colors.white60,
            fontSize: 24.0,
          )
        );
}