import 'package:expense_tracker_app/view/expense.dart';
import 'package:flutter/material.dart';

var _colorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 0, 157, 255),
);

void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true).copyWith(
      colorScheme: _colorScheme,
      appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: _colorScheme.onPrimaryContainer,
        foregroundColor: _colorScheme.primaryContainer,
      ),
      cardTheme: const CardTheme().copyWith(
        color: _colorScheme.primaryContainer,
        margin: const EdgeInsets.all(20),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: _colorScheme.primaryContainer,
          foregroundColor: _colorScheme.onPrimaryContainer,
        ),
      ),
      textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: _colorScheme.onPrimaryContainer,
            ),
          ),
    ),
    home: const Expense(),
  ));
}
