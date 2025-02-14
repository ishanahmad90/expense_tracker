import 'package:expense_tracker/screens/expens_screen.dart';
import 'package:flutter/material.dart';

final ColorScheme kColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: const Color.fromARGB(255, 62, 105, 245));

final ColorScheme kColorSchemeDark = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 138, 152, 154));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Tracker',
      darkTheme: ThemeData.dark().copyWith(
          colorScheme: kColorSchemeDark,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorSchemeDark.onPrimaryContainer,
            foregroundColor: kColorSchemeDark.primaryContainer,
          )),
      theme: ThemeData().copyWith(
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorScheme.onPrimaryContainer,
            foregroundColor: kColorScheme.primaryContainer,
          ),
          cardTheme: CardTheme().copyWith(
            color: kColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          )),
      home: const ExpenseScreen(),
    );
  }
}
