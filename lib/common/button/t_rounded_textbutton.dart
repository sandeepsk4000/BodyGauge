
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedTextButton extends StatelessWidget {
  const RoundedTextButton({
    super.key, required this.onPressed, required this.title,
  });
  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey
      ),
      child: TextButton(onPressed:onPressed,
       child:  Text(title,style: GoogleFonts.russoOne(fontSize: 18,color: Colors.white),)));
  }
}