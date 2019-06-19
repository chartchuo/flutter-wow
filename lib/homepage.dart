import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Text('1'),
            title: Text('Safe Area'),
            trailing: Icon(Icons.navigate_next),
            onTap: () => Navigator.pushNamed(context, '/01'),
          ),
          ListTile(
            leading: Text('2'),
            title: Text('Expanded'),
            trailing: Icon(Icons.navigate_next),
            onTap: () => Navigator.pushNamed(context, '/02'),
          )
        ],
      ),
    );
  }
}
