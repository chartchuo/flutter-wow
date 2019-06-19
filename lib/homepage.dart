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
            MainMenuItem('01', 'SafeArea', '/01'),
            MainMenuItem('02', 'Expanded', '/02'),
            MainMenuItem('03', 'Wrap', '/03'),
            MainMenuItem('04', 'Animated Container', '/04'),
          ],
        ),
      ),
    );
  }
}

class MainMenuItem extends StatelessWidget {
  final String leading;
  final String title;
  final String navigatorName;
  const MainMenuItem(
    this.leading,
    this.title,
    this.navigatorName, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      child: Card(
        color: Colors.white70,
        child: ListTile(
          leading: Text(
            leading,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w100),
          ),
          title: Text(title),
          trailing: Icon(
            Icons.navigate_next,
            size: 24,
          ),
          onTap: () => Navigator.pushNamed(context, navigatorName),
        ),
      ),
    );
  }
}
