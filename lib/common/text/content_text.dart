import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentText extends StatelessWidget {
  const ContentText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.abhayaLibre(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
    );
  }
}
