import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

var eColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 90, 163));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        colorScheme: eColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: eColorScheme.onPrimaryContainer,
          foregroundColor: eColorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: eColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.normal,
            color: eColorScheme.onSecondaryContainer,
            fontSize: 14,
          ),
        ),
      ),
      home: const Expenses(),
    );
  }
}
