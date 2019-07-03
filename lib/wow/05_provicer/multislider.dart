import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'my_output.dart';
import 'my_slider.dart';
import 'slider_state.dart';

class MyMultiSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sliderList = Provider.of<MultiSliderState>(context);
    return ListView.builder(
      itemCount: sliderList.multiSlider.length,
      itemBuilder: (context, i) {
        var slider = sliderList.multiSlider[i];
        return ChangeNotifierProvider<SliderState>.value(
          value: slider,
          child: Column(
            children: <Widget>[
              MyOutput(),
              MySlider(),
            ],
          ),
        );
      },
    );
  }
}
