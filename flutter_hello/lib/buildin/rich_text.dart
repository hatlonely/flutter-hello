import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
      text: 'Hello ',
      style: GoogleFonts.oswald(textStyle: Theme.of(context).textTheme.bodyText2),
      children: [
        TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
        TextSpan(text: ' world!'),
      ],
    ));
  }
}
