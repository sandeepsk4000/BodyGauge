import 'package:body_gauge/common/app_bar/t_app_bar.dart';
import 'package:body_gauge/common/container/t_rounded_container.dart';
import 'package:body_gauge/common/textfield/t_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class BMRCalculator extends StatelessWidget {
  final TextEditingController ageController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final RxDouble bmrResult = 0.0.obs;
  var selectedGender = Gender.male.obs;

  BMRCalculator({super.key});

  void calculateBMR() {
    double age = double.tryParse(ageController.text) ?? 0.0;
    double weight = double.tryParse(weightController.text) ?? 0.0;
    double height = double.tryParse(heightController.text) ?? 0.0;
    if (age > 0 && weight > 0 && height > 0) {
      double bmr = selectedGender.value == Gender.male
          ? (10 * weight) + (6.25 * height) - (5 * age) + 5
          : (10 * weight) + (6.25 * height) - (5 * age) - 161;
      bmrResult.value = bmr;
    } else {
      bmrResult.value = 0.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('BMR Calculator',
            style: GoogleFonts.abel(fontSize: 40, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Image(
                image: AssetImage(
                    'lib/asset/result/sammy-line-29.png')),
            TRoundedContainer(
              width: MediaQuery.of(context).size.width,
              height: 600,
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Obx(() => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Radio(
                            value: Gender.male,
                            groupValue: selectedGender.value,
                            onChanged: (value) {
                              selectedGender.value = value as Gender;
                            },
                          ),
                          Text(
                            'Male',
                            style: GoogleFonts.abel(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          const SizedBox(width: 20),
                          Radio(
                            value: Gender.female,
                            groupValue: selectedGender.value,
                            onChanged: (value) {
                              selectedGender.value = value as Gender;
                            },
                          ),
                          Text(
                            'Female',
                            style: GoogleFonts.abel(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      )),
                  const SizedBox(height: 20),
                  // Text form field
                  TTextField(Controller1: ageController, label: 'Enter Age'),
                  TTextField(
                      Controller1: weightController,
                      label: "Enter Weight (Kg)"),
                  TTextField(
                      Controller1: heightController,
                      label: "Enter Height (cm)"),
                  // Calculate Button
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 45,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Colors.deepPurpleAccent)),
                      onPressed: calculateBMR,
                      child: Text(
                        'Calculate BMR',
                        style: GoogleFonts.abel(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Obx(() => Text(
                        'BMR: ${bmrResult.value.toStringAsFixed(2)} calories/day',
                        style: GoogleFonts.abel(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum Gender {
  male,
  female,
}
