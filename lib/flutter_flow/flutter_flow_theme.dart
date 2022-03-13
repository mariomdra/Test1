// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) => LightModeTheme();

  Color primaryColor;
  Color secondaryColor;
  Color tertiaryColor;
  Color alternate;
  Color primaryBackground;
  Color secondaryBackground;
  Color primaryText;
  Color secondaryText;

  Color grayIcon;
  Color darkText;
  Color primary600;
  Color secondary600;
  Color dark400;
  Color background;
  Color grayIcon400;
  Color lineColor;
  Color dark500;

  TextStyle get title1 => GoogleFonts.getFont(
        'Lexend Deca',
        color: Color(0xFF0C141D),
        fontWeight: FontWeight.w600,
        fontSize: 32,
      );
  TextStyle get title2 => GoogleFonts.getFont(
        'Lexend Deca',
        color: darkText,
        fontWeight: FontWeight.w500,
        fontSize: 26,
      );
  TextStyle get title3 => GoogleFonts.getFont(
        'Lexend Deca',
        color: darkText,
        fontWeight: FontWeight.w500,
        fontSize: 24,
      );
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Lexend Deca',
        color: darkText,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Lexend Deca',
        color: darkText,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Lexend Deca',
        color: darkText,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Lexend Deca',
        color: grayIcon,
        fontWeight: FontWeight.normal,
        fontSize: 12,
      );
}

class LightModeTheme extends FlutterFlowTheme {
  Color primaryColor = const Color(0xFFEE8B60);
  Color secondaryColor = const Color(0xFF39D2C0);
  Color tertiaryColor = const Color(0xFFFFFFFF);
  Color alternate = const Color(0x00000000);
  Color primaryBackground = const Color(0x00000000);
  Color secondaryBackground = const Color(0x00000000);
  Color primaryText = const Color(0x00000000);
  Color secondaryText = const Color(0x00000000);

  Color grayIcon = Color(0xFF57636C);
  Color darkText = Color(0xFF0C141D);
  Color primary600 = Color(0xFFC3724C);
  Color secondary600 = Color(0xFF2CAE9F);
  Color dark400 = Color(0xFF262D34);
  Color background = Color(0xFFF1F4F8);
  Color grayIcon400 = Color(0xFFABB3BA);
  Color lineColor = Color(0xFFDBE2E7);
  Color dark500 = Color(0xFF1D2429);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String fontFamily,
    Color color,
    double fontSize,
    FontWeight fontWeight,
    FontStyle fontStyle,
    bool useGoogleFonts = true,
    double lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              height: lineHeight,
            );
}
