import 'package:flutter/material.dart';
import 'screens/results_page.dart';
import 'screens/input_page.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        '/inputPage': (context) => const InputPage(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: const InputPage(),
    ),
  );
}
