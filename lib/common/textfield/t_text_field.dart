import 'package:body_gauge/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TTextField extends StatelessWidget {
  const TTextField({
    super.key,
    required this.Controller1,
    required this.label,
  });
  final String label;

  final TextEditingController Controller1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        controller: Controller1,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: label,
            labelStyle: const TextStyle(color: TColors.black)),
      ),
    );
  }
}
