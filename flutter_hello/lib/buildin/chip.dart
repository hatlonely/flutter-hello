import 'package:flutter/material.dart';

class ChipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        children: [
          Chip(label: Text("One")),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.grey.shade800,
              child: const Text('AB'),
            ),
            label: Text('Two'),
          ),
          Chip(
            avatar: CircleAvatar(
              child: Icon(Icons.check),
            ),
            label: Text("Three"),
          ),
          Chip(
            label: Text("Four"),
            onDeleted: () {},
          ),
        ],
      ),
    );
  }
}
