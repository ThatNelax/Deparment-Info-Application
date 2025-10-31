import 'package:flutter/material.dart';
import 'loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme(
          primary: Color(0xFF6C63FF),
          onPrimary: Colors.white,
          secondary: Color(0xFF8E94F2),
          onSecondary: Colors.white,
          error: Color(0xFFFF6B6B),
          onError: Colors.white,
          surface: Colors.white,
          onSurface: Colors.black87,
          brightness: Brightness.light,
        ),
      ),
      home: const LoginPage(),
    );
  }
}
