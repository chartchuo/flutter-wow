import 'package:flutter/material.dart';

class AnimatedContainerSample extends StatefulWidget {
  @override
  _AnimatedContainerSampleState createState() =>
      _AnimatedContainerSampleState();
}

class _AnimatedContainerSampleState extends State<AnimatedContainerSample> {
  Color boxColor = Colors.black;
  double boxHeight = 100;
  double boxWidth = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text('Red'),
                  onPressed: () {
                    setState(() {
                      boxColor = Colors.red;
                    });
                  },
                ),
                RaisedButton(
                  child: Text('Green'),
                  onPressed: () {
                    setState(() {
                      boxColor = Colors.green;
                    });
                  },
                ),
                RaisedButton(
                  child: Text('Blue'),
                  onPressed: () {
                    setState(() {
                      boxColor = Colors.blue;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text('Width 0'),
                  onPressed: () {
                    setState(() {
                      boxWidth = 0;
                    });
                  },
                ),
                RaisedButton(
                  child: Text('Width 100'),
                  onPressed: () {
                    setState(() {
                      boxWidth = 100;
                    });
                  },
                ),
                RaisedButton(
                  child: Text('Width 200'),
                  onPressed: () {
                    setState(() {
                      boxWidth = 200;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text('Height 0'),
                  onPressed: () {
                    setState(() {
                      boxHeight = 0;
                    });
                  },
                ),
                RaisedButton(
                  child: Text('Height 100'),
                  onPressed: () {
                    setState(() {
                      boxHeight = 100;
                    });
                  },
                ),
                RaisedButton(
                  child: Text('Height 200'),
                  onPressed: () {
                    setState(() {
                      boxHeight = 200;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text('1'),
                  onPressed: () {
                    setState(() {
                      boxColor = Colors.orange;
                      boxWidth = 10;
                      boxHeight = 100;
                    });
                  },
                ),
                RaisedButton(
                  child: Text('2'),
                  onPressed: () {
                    setState(() {
                      boxColor = Colors.pink;
                      boxWidth = 100;
                      boxHeight = 10;
                    });
                  },
                ),
                RaisedButton(
                  child: Text('3'),
                  onPressed: () {
                    setState(() {
                      boxColor = Colors.purple;
                      boxWidth = 200;
                      boxHeight = 200;
                    });
                  },
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  height: boxHeight,
                  width: boxWidth,
                  color: boxColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
