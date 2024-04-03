import "package:flutter/material.dart";

final ThemeData calculatorTheme = _calculatorTheme();

ThemeData _calculatorTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    scaffoldBackgroundColor: const Color.fromRGBO(244, 243, 238, 1),
    colorScheme: base.colorScheme.copyWith(
      background: const Color.fromRGBO(244, 243, 238, 1),
      onBackground: const Color.fromRGBO(52, 52, 52, 1),
      primaryContainer: const Color.fromRGBO(70, 63, 58, 1),
      secondaryContainer: const Color.fromRGBO(244, 243, 238, 1),
      tertiaryContainer: const Color.fromRGBO(214, 73, 51, 1),
    )
  );
}