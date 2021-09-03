import 'package:flutter/material.dart';

class TextFieldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [TextFieldInputDemo()],
      ),
    );
  }
}

class TextFieldInputDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TextFieldInputDemoState();
}

class _TextFieldInputDemoState extends State<TextFieldInputDemo> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
        ),
        TextField(
          controller: _controller,
          decoration: InputDecoration(
            labelText: 'Password',
          ),
        ),
        TextField(
          controller: _controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
          ),
        ),
        TextField(
          controller: _controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
            hintText: '123456',
          ),
        ),
      ],
    );
  }
}
