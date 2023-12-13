import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubHeadingText extends StatelessWidget {
  const SubHeadingText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.acme(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20));
  }
}
