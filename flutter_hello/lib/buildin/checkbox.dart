import 'package:flutter/material.dart';

class CheckBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [CheckBoxInputDemo(), RadioInputDemo()],
      ),
    );
  }
}

class CheckBoxInputDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CheckBoxInputDemoState();
}

class _CheckBoxInputDemoState extends State<CheckBoxInputDemo> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Checkbox(
              value: isChecked1,
              onChanged: (bool? value) {
                setState(() {
                  isChecked1 = value!;
                });
              }),
          Text("Checked Box1")
        ]),
        Row(children: [
          Checkbox(
              value: isChecked2,
              onChanged: (bool? value) {
                setState(() {
                  isChecked2 = value!;
                });
              }),
          Text("Checked Box2")
        ]),
        Row(children: [
          Checkbox(
              value: isChecked3,
              onChanged: (bool? value) {
                setState(() {
                  isChecked3 = value!;
                });
              }),
          Text("Checked Box3")
        ])
      ],
    );
  }
}

class RadioInputDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RadioInputDemoState();
}

enum RadioEnums { radio1, radio2, radio3 }

class _RadioInputDemoState extends State<RadioInputDemo> {
  RadioEnums? _radioEnums = RadioEnums.radio1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ['radio1', RadioEnums.radio1],
        ['radio2', RadioEnums.radio2],
        ['radio3', RadioEnums.radio3],
      ]
          .map((e) => ListTile(
                title: Text(e[0] as String),
                leading: Radio<RadioEnums>(
                  groupValue: _radioEnums,
                  value: e[1] as RadioEnums,
                  onChanged: (RadioEnums? value) {
                    setState(() {
                      _radioEnums = value;
                    });
                  },
                ),
              ))
          .toList(),
    );
  }
}
