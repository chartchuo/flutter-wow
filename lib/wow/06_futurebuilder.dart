import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FutureBuilderSample extends StatefulWidget {
  createState() => _State();
}

class _State extends State<FutureBuilderSample> {
  int _img = 1;

  void initState() {
    super.initState();
  }

  void changeImg() {
    setState(() {
      if (_img < 10)
        _img += 1;
      else
        _img = 1;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter101 FutureBuilder')),
        body: Center(
          // child: Image.network('https://picsum.photos/id/$_img/400/600'),
          child: FutureBuilder(
            future: http.get('https://picsum.photos/id/$_img/600/400'),
            builder: (_, AsyncSnapshot<http.Response> snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return Text("Error");
                }
                return Image.memory(snapshot.data.bodyBytes);
              }
              return Text('Loading..........');
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.switch_camera),
          onPressed: changeImg,
        ),
      ),
    );
  }
}
