import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  RxString selectedContainer = ''.obs;

  void changeColor(String title) {
    if (selectedContainer.value == title) {
      selectedContainer.value = ''; // Deselect if already selected
    } else {
      selectedContainer.value = title; // Select the new container
    }
    update();
  }

  Color getColor(String title) {
    return selectedContainer.value == title ? Colors.blue : Colors.grey.shade300;
  }

  void setSelectedHeight(int height) {}
}
