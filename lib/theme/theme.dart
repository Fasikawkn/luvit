import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get darkTheme => ThemeData(
        scaffoldBackgroundColor: const Color(0xff0E0D0D),
        indicatorColor: Colors.green,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xffFF016B),
          primary: const Color(0xff000000),
          secondary: const Color(0xff3A3A3A),
          tertiary: const Color(0xffFCFCFC),
          surface: const Color(0xffFF016B),
          onSecondary: const Color(0xffD9D9D9),
          onTertiary: const Color(0xff1A1A1A),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        iconTheme: const IconThemeData(color: Color(0xffFCFCFC)),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Color(0xffFCFCFC), fontSize: 20),
          bodyMedium: TextStyle(color: Color(0xffFCFCFC), fontSize: 15),
          bodySmall: TextStyle(color: Color(0xffFCFCFC), fontSize: 14),
        ),
        appBarTheme:
            const AppBarTheme(elevation: 0, backgroundColor: Color(0xff0E0D0D)),
        useMaterial3: true,
      );
}
