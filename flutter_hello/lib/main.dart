import 'package:flutter/material.dart';
import 'package:flutter_hello/buildin/button.dart';
import 'package:flutter_hello/buildin/checkbox.dart';
import 'package:flutter_hello/buildin/grid_view.dart';
import 'package:flutter_hello/buildin/icon.dart';
import 'package:flutter_hello/buildin/rich_text.dart';
import 'package:flutter_hello/buildin/scaffold.dart';
import 'package:flutter_hello/buildin/slider.dart';
import 'package:flutter_hello/buildin/switch.dart';
import 'package:flutter_hello/buildin/text.dart';
import 'package:flutter_hello/buildin/text_field.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello Flutter',
      routes: {
        '/text': (context) => TextDemo(),
        '/icon': (context) => IconDemo(),
        '/button': (context) => ButtonDemo(),
        '/scaffold': (context) => ScaffoldDemo(),
        '/gridView': (context) => GridViewDemo(),
        '/richText': (context) => RichTextDemo(),
        '/textField': (context) => TextFieldDemo(),
        '/checkbox': (context) => CheckBoxDemo(),
        '/slider': (context) => SliderDemo(),
        '/switch': (context) => SwitchDemo(),
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
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/icon'), child: Text("icon")),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/button'), child: Text("button")),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/scaffold'), child: Text("scaffold")),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/gridView'), child: Text("gridView")),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/richText'), child: Text("richText")),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/textField'), child: Text("textField")),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/checkbox'), child: Text("checkbox")),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/slider'), child: Text("slider")),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/switch'), child: Text("switch")),
          ],
        ),
      ),
    );
  }
}
