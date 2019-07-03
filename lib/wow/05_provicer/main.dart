import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'multislider.dart';
import 'slider_state.dart';
import 'my_output.dart';
import 'my_slider.dart';

class ProviderHome extends StatefulWidget {
  _ProviderHomeState createState() => _ProviderHomeState();
}

class _ProviderHomeState extends State<ProviderHome> {
  double sliderValue = 0.5;

  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (_) => SliderState()),
        ChangeNotifierProvider(builder: (_) => MultiSliderState(6))
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text('Provider'),
        ),
        body: Column(
          children: <Widget>[
            MyOutput(),
            MySlider(),
            Expanded(child: MyMultiSlider()),
          ],
        ),
      ),
    );
  }
}
