import 'package:flutter/material.dart';

class SliderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliderInputDemo();
  }
}

class SliderInputDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SliderInputDemo();
}

class _SliderInputDemo extends State<SliderInputDemo> {
  double _sliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _sliderValue,
      min: 0,
      max: 100,
      divisions: 5,
      label: _sliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _sliderValue = value;
        });
      },
    );
  }
}
