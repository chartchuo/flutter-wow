import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Colors.greenAccent,
              Colors.orangeAccent,
            ])),
        child: ListView(
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(32, 8, 8, 8),
              title: Text('SafeArea', style: Theme.of(context).textTheme.title),
              trailing: Icon(Icons.navigate_next),
              onTap: () => Navigator.pushNamed(context, '/01_safe_area'),
            ),
          ],
        ),
      ),
    );
  }
}
