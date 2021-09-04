import 'package:flutter/material.dart';

class SwitchDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SwitchInputDemo(),
    );
  }
}

class SwitchInputDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SwitchInputDemoState();
}

class _SwitchInputDemoState extends State<SwitchInputDemo> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _switchValue,
      onChanged: (bool value) {
        setState(() {
          _switchValue = value;
        });
      },
    );
  }
}
