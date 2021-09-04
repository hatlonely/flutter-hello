import 'package:flutter/material.dart';

class ProgressIndicatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [CircularProgressIndicatorDemo(), LinearProgressIndicatorDemo()],
      ),
    );
  }
}

class CircularProgressIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CircularProgressIndicatorDemoState();
}

class _CircularProgressIndicatorDemoState extends State<CircularProgressIndicatorDemo> with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      value: controller.value,
      semanticsLabel: 'Linear progress indicator',
    );
  }
}

class LinearProgressIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LinearProgressIndicatorDemoState();
}

class _LinearProgressIndicatorDemoState extends State<LinearProgressIndicatorDemo> with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: controller.value,
    );
  }
}
