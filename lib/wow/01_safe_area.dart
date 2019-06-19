import 'package:flutter/material.dart';

class SafeAreaSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Text('Text Text Text Text'),
      ),
    );
  }
}
