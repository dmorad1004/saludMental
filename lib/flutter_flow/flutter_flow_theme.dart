// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FlutterFlowTheme {
  late Color primary;

  late Color secondary;
  late Color tertiary;
  late Color alternate;

  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;
  late Color blancoFondo;
  late Color azulMedio;
  late Color azulOscuroFondo;
  late Color buttonColor;
  late LinearGradient gradientsyle;

  TextStyle get bodyLarge => typography.bodyLarge;

  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodyMediumFamily => typography.bodyMediumFamily;

  TextStyle get bodySmall => typography.bodySmall;
  String get bodySmallFamily => typography.bodySmallFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineLargeFamily => typography.headlineLargeFamily;

  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get labelSmallFamily => typography.labelSmallFamily;
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get titleSmallFamily => typography.titleSmallFamily;
  Typography get typography => ThemeTypography(this);

  static FlutterFlowTheme of(BuildContext context) {
    return LightModeTheme();
  }
}

class LightModeTheme extends FlutterFlowTheme {
  late Color primary = const Color(0xFF002d72);
  late Color secondary = const Color(0xFF001A3C);
  late Color tertiary = const Color(0xFFFFFFFF);
  late Color alternate = const Color(0x66FEFAE0);
  late Color primaryText = const Color(0xFF5E6C5B);
  late Color secondaryText = const Color(0xFF545551);
  late Color primaryBackground = const Color(0xFFC02D722);
  late Color secondaryBackground = const Color(0xFF76C7E1);
  late Color accent1 = const Color(0xFF4F8A61);
  late Color accent2 = const Color(0xFFA75F5F);
  late Color accent3 = const Color(0xFFC68BF4);
  late Color accent4 = const Color(0xFF76C7E1);
  late Color success = const Color(0xFF249689);
  late Color warning = const Color(0xFFF9CF58);
  late Color error = const Color(0xFFFF5963);
  late Color info = const Color(0xFFFFFFFF);
  late Color blancoFondo = const Color(0xFFD7F3FF);
  late Color azulMedio = const Color(0xFF86C2EA);
  late Color azulOscuroFondo = const Color(0xCC2065A2);
  late Color buttonColor = const Color(0xFF8DBB00);
  late LinearGradient gradientsyle = const LinearGradient(
    colors: [Color(0xff091e3a), Color(0xff2f80ed), Color(0xff2d9ee0)],
    stops: [0, 0.7, 1],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;
}

class ThemeTypography extends Typography {
  final FlutterFlowTheme theme;

  ThemeTypography(this.theme);

  TextStyle get bodyLarge => const TextStyle(
        fontFamily: 'Ancizar sans',
        color: Color(0xFF545551),
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
      );
  String get bodyLargeFamily => 'Ancizar sans';
  TextStyle get bodyMedium => const TextStyle(
        fontFamily: 'Ancizar sans',
        color: Color(0xFF545551),
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
        fontStyle: FontStyle.normal,
      );
  String get bodyMediumFamily => 'Ancizar sans';
  TextStyle get bodySmall => const TextStyle(
        fontFamily: 'Ancizar sans',
        color: Color(0xFF545551),
        fontWeight: FontWeight.w300,
        fontSize: 16.0,
        fontStyle: FontStyle.normal,
      );
  String get bodySmallFamily => 'Ancizar sans';
  TextStyle get displayLarge => TextStyle(
        fontFamily: 'Ancizar sans',
        color: theme.primary,
        fontWeight: FontWeight.bold,
        fontSize: 26.0,
        fontStyle: FontStyle.normal,
      );
  String get displayLargeFamily => 'Ancizar sans';
  TextStyle get displayMedium => TextStyle(
        fontFamily: 'Ancizar sans',
        color: theme.tertiary,
        fontWeight: FontWeight.bold,
        fontSize: 22.0,
        fontStyle: FontStyle.normal,
      );
  String get displayMediumFamily => 'Ancizar sans';
  TextStyle get displaySmall => TextStyle(
        fontFamily: 'Ancizar sans',
        color: theme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
        fontStyle: FontStyle.normal,
      );
  String get displaySmallFamily => 'Ancizar sans';
  TextStyle get headlineLarge => TextStyle(
        fontFamily: 'Ancizar sans',
        color: theme.tertiary,
        fontWeight: FontWeight.w300,
        fontSize: 22.0,
        fontStyle: FontStyle.normal,
      );
  String get headlineLargeFamily => 'Ancizar sans';
  TextStyle get headlineMedium => TextStyle(
        fontFamily: 'Ancizar sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
        fontStyle: FontStyle.normal,
      );
  String get headlineMediumFamily => 'Ancizar sans';
  TextStyle get headlineSmall => TextStyle(
        fontFamily: 'Ancizar sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w300,
        fontSize: 16.0,
        fontStyle: FontStyle.normal,
      );
  String get headlineSmallFamily => 'Ancizar sans';
  TextStyle get labelLarge => TextStyle(
        fontFamily: 'Ancizar sans',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
        fontStyle: FontStyle.normal,
      );
  String get labelLargeFamily => 'Ancizar sans';
  TextStyle get labelMedium => TextStyle(
        fontFamily: 'Ancizar sans',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
        fontStyle: FontStyle.normal,
      );
  String get labelMediumFamily => 'Ancizar sans';
  TextStyle get labelSmall => TextStyle(
        fontFamily: 'Ancizar sans',
        color: theme.secondaryText,
        fontWeight: FontWeight.w300,
        fontSize: 14.0,
        fontStyle: FontStyle.normal,
      );
  String get labelSmallFamily => 'Ancizar sans';
  TextStyle get titleLarge => TextStyle(
        fontFamily: 'Ancizar sans',
        color: theme.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
        fontStyle: FontStyle.normal,
      );
  String get titleLargeFamily => 'Ancizar sans';
  TextStyle get titleMedium => TextStyle(
        fontFamily: 'Ancizar sans',
        color: theme.info,
        fontWeight: FontWeight.w300,
        fontSize: 14.0,
        fontStyle: FontStyle.normal,
      );
  String get titleMediumFamily => 'Ancizar sans';
  TextStyle get titleSmall => TextStyle(
        fontFamily: 'Ancizar sans',
        color: theme.info,
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
        fontStyle: FontStyle.normal,
      );
  String get titleSmallFamily => 'Ancizar sans';
}

abstract class Typography {
  TextStyle get bodyLarge;
  String get bodyLargeFamily;
  TextStyle get bodyMedium;
  String get bodyMediumFamily;
  TextStyle get bodySmall;
  String get bodySmallFamily;
  TextStyle get displayLarge;
  String get displayLargeFamily;
  TextStyle get displayMedium;
  String get displayMediumFamily;
  TextStyle get displaySmall;
  String get displaySmallFamily;
  TextStyle get headlineLarge;
  String get headlineLargeFamily;
  TextStyle get headlineMedium;
  String get headlineMediumFamily;
  TextStyle get headlineSmall;
  String get headlineSmallFamily;
  TextStyle get labelLarge;
  String get labelLargeFamily;
  TextStyle get labelMedium;
  String get labelMediumFamily;
  TextStyle get labelSmall;
  String get labelSmallFamily;
  TextStyle get titleLarge;
  String get titleLargeFamily;
  TextStyle get titleMedium;
  String get titleMediumFamily;
  TextStyle get titleSmall;
  String get titleSmallFamily;
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
