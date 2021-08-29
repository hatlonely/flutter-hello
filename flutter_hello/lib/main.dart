import 'package:flutter/material.dart';
import 'package:flutter_hello/buildin/icon.dart';
import 'package:flutter_hello/buildin/text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      routes: {
        '/text': (context) => TextDemo(),
        '/icon': (context) => IconDemo(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: "Hello Flutter"),
    );
  }
}

class HomePage extends StatelessWidget {
  final String title;

  HomePage({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/text'), child: Text("text")),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/icon'), child: Text("icon"))
          ],
        ),
      ),
    );
  }
}
