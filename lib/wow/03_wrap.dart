import 'package:flutter/material.dart';

class WrapSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 32,
              color: Colors.red,
            ),
            Expanded(
              child: Wrap(
                direction: Axis.vertical,
                spacing: 8,
                children: <Widget>[
                  Chip(label: Text('aaaaa')),
                  Chip(label: Text('aaaaa')),
                  Chip(label: Text('aaaaa')),
                  Chip(label: Text('aaaaa')),
                  Chip(label: Text('aaaaa')),
                  Chip(label: Text('aaaaa')),
                  Chip(label: Text('aaaaa')),
                  Chip(label: Text('aaaaa')),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
