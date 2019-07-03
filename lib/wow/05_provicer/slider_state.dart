import 'package:flutter/material.dart';

class SliderState with ChangeNotifier {
  double _sliderValue = 0.5;

  double get sliderValue => _sliderValue;

  set sliderValue(double newValue) {
    _sliderValue = newValue;
    notifyListeners();
  }
}

class MultiSliderState with ChangeNotifier {
  List<SliderState> multiSlider;
  MultiSliderState([int n = 3]) {
    multiSlider = List<SliderState>.generate(n, (i) => SliderState());
  }
}
