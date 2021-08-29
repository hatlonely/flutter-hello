import 'package:flutter/material.dart';

// https://fonts.google.com/icons?selected=Material+Icons
class IconDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [Icon(Icons.favorite)])
      ],
    );
  }
}
