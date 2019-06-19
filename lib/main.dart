import 'package:flutter/material.dart';
import 'package:wow/wow/index.dart';

import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => HomePage(),
        '/01': (context) => SafeAreaSample(),
        '/02': (context) => ExpandedSample(),
        '/03': (context) => WrapSample(),
      },
    );
  }
}
