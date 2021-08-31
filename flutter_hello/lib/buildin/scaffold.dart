import 'package:flutter/material.dart';

class ScaffoldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: Center(child: Text('text')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {print("click")},
        tooltip: 'btn',
        child: const Icon(Icons.add),
      ),
    );
  }
}
