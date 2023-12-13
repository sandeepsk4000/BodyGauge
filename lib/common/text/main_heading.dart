import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainHeading extends StatelessWidget {
  const MainHeading({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.acme(
          color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
