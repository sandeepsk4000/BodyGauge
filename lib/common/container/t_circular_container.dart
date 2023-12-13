import 'package:body_gauge/feautures/body_guage/controller/gender_button_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class TCircularContainer extends StatelessWidget {
  final IconData icon;
  final String title;
  final MyController myController;

  const TCircularContainer({
    Key? key,
    required this.icon,
    required this.title,
    required this.myController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        myController.changeColor(
            title); // Pass the title to identify which button was tapped
      },
      child: GetBuilder<MyController>(
        init: myController,
        builder: (_) {
          return Container(
            width: 170,
            height: 200,
            decoration: BoxDecoration(
              color: myController.getColor(title),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 80, color: Colors.black),
                const SizedBox(height: 10),
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
