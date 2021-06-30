import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

final _fontFamily = GoogleFonts.poppins().fontFamily;

List<ThemeData> themes = [
  ThemeData(
    primaryColor: Color(0xFF107F53),
    fontFamily: _fontFamily,
    brightness: Brightness.light,
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusHelper.extraSmallAll,
      ),
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
          fontFamily: _fontFamily,
        ),
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
  ),
  ThemeData(primaryColor: Colors.red),
  ThemeData(primaryColor: Colors.blue),
];
