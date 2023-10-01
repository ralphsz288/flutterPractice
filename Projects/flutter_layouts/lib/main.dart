import 'package:flutter/material.dart';
import 'package:flutter_layouts/screens/photo_screen.dart';
import 'package:flutter_layouts/screens/pizza_screen.dart';
import 'package:flutter_layouts/screens/rows_and_columns_screen.dart';
import 'package:flutter_layouts/screens/stack_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container App',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.redAccent,
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xff7C4DFF),
          brightness: Brightness.dark,
          primary: const Color(0xff009688),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            color: Colors.red,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            color: Colors.black,
          )),
      ),
      home: const PizzaScreen(),
    );
  }
}
