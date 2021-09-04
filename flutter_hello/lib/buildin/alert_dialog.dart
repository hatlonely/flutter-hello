import 'package:flutter/material.dart';

class AlertDialogDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text("show dialog"),
              onPressed: () => showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('AlertDialog Title'),
                  content: const Text('AlertDialog description'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () =>
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Awesome SnackBar 1'))),
              child: Text('show snack bar 1'),
            ),
            ElevatedButton(
              child: Text('show snack bar 2'),
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  action: SnackBarAction(
                    label: 'Action',
                    onPressed: () {
                      // Code to execute.
                    },
                  ),
                  content: const Text('Awesome SnackBar!'),
                  duration: const Duration(milliseconds: 1500),
                  width: 280.0, // Width of the SnackBar.
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0, // Inner padding for SnackBar content.
                  ),
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
