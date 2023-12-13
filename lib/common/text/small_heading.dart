import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallHeading extends StatelessWidget {
  const SmallHeading({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.acme(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
    );
  }
}
