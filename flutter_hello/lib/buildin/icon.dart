import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// https://fonts.google.com/icons?selected=Material+Icons
// https://fontawesome.com/v6.0/icons?d=gallery&p=2&s=solid
class IconDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.favorite),
        Icon(Icons.check_circle, color: Theme.of(context).colorScheme.primary),
        Icon(Icons.delete, color: Theme.of(context).colorScheme.primaryVariant),
        Icon(Icons.visibility, color: Theme.of(context).colorScheme.secondary),
        Icon(Icons.visibility_off, color: Theme.of(context).colorScheme.secondaryVariant),
        Icon(Icons.dashboard, color: Theme.of(context).colorScheme.error),
        Icon(Icons.analytics, size: 24),
        Icon(Icons.analytics, size: 30),
        Icon(Icons.analytics, size: 36),
        FaIcon(FontAwesomeIcons.arrowLeft),
        FaIcon(FontAwesomeIcons.thumbsUp),
        FaIcon(FontAwesomeIcons.search),
        FaIcon(FontAwesomeIcons.gamepad),
      ],
    );
  }
}
