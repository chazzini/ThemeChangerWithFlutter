import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor:
          isDarkTheme ? const Color(0xFF00001a) : Color(0xFFFFFFFF),
      primarySwatch: Colors.blue,
      colorScheme: ThemeData().colorScheme.copyWith(
            secondary:
                isDarkTheme ? const Color(0xFF00001a) : Color(0xFFFFFFFF),
            brightness: isDarkTheme ? Brightness.dark : Brightness.light,
          ),
      cardColor: isDarkTheme ? const Color(0xFF0a0d2c) : Color(0xFFF2FDFD),
      canvasColor: isDarkTheme ?  Colors.black : Colors.grey[50],
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
        colorScheme: isDarkTheme
        ? const ColorScheme.dark()
        :const ColorScheme.light(),
      )
    );
  }
}
