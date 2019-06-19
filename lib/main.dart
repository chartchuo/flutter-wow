import 'package:flutter/material.dart';
import 'package:wow/wow/index.dart';
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: {
        '/': (context) => HomePage(),
        '/01_safe_area': (context) => SafeAreaSample(),
      },
    );
  }
}
