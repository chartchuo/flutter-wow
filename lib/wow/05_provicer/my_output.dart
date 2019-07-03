import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'slider_state.dart';

class MyOutput extends StatelessWidget {
  Widget build(context) {
    return Consumer<SliderState>(
      builder: (_, sliderState, __) =>
          Text("Value=${sliderState.sliderValue.toStringAsFixed(2)}"),
    );
  }
}
