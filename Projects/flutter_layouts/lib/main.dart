import 'package:flutter/material.dart';
import 'package:flutter_layouts/screens/listView/contacts_list.dart';
import 'package:flutter_layouts/screens/gridView/gridView_example.dart';
import 'package:flutter_layouts/screens/listView/list_view_example.dart';
import 'package:flutter_layouts/screens/container/photo_screen.dart';
import 'package:flutter_layouts/screens/container/pizza_screen.dart';
import 'package:flutter_layouts/screens/navigation_examples/art_route_popup.dart';
import 'package:flutter_layouts/screens/rows_and_columns/rows_and_columns_screen.dart';
import 'package:flutter_layouts/screens/stack/stack_screen.dart';
import 'package:flutter_layouts/utils/art_util.dart';

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
            color: Colors.white,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            color: Colors.black,
          )),
      ),
      home: const ArtRoute(art: ArtUtil.IMG_VANGOGH,),
    );
  }
}
