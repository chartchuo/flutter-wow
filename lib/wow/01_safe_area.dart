import 'package:flutter/material.dart';

class SafeAreaSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text("Text")),
    );
  }
}
