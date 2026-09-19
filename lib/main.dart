import 'package:flutter/material.dart';
import 'package:tarea1/screens/home_page.dart';
import 'package:tarea1/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Campus Eventos',
      theme: AppTheme.lightTheme,
      home: const HomePage()
    );
  }
}

