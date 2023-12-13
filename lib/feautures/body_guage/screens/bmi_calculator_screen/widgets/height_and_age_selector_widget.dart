import 'package:body_gauge/common/textfield/t_text_field.dart';
import 'package:body_gauge/utils/constants/t_sizes.dart';
import 'package:body_gauge/utils/helpers/t_helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HeightAndAgeSelectorWidget extends StatelessWidget {
  HeightAndAgeSelectorWidget({Key? key}) : super(key: key);

  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final RxDouble bmiResult = 0.0.obs;
  final RxString healthStatus = ''.obs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Column(
      children: [
        const SizedBox(height: TSizes.spaceBwItems),
        Text(
          'Height & weight',
          style: GoogleFonts.abel(
            color: Colors.black,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputField),
        TTextField(Controller1: heightController, label: "Enter your Height"),
        const SizedBox(height: TSizes.spaceBtwInputField),
        TTextField(
          Controller1: weightController,
          label: "Enter your Weight",
        ),
        const SizedBox(height: TSizes.spaceBtwInputField),
        SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.8,
          child: ElevatedButton(
            onPressed: () {
              // Calculate BMI
              calculateBMI();
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
              elevation: MaterialStateProperty.all(0),
            ),
            child: Text(
              "Calculate",
              style: GoogleFonts.abel(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBwItems,
        ),
        Container(
          width: 300,
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color:
                  dark ? Colors.black.withOpacity(0.7) : Colors.indigoAccent),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Center(
                    child: Text(
                      'BMI: ${bmiResult.value.toStringAsFixed(2)}',
                      style: GoogleFonts.adventPro(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  )),
              const SizedBox(
                height: TSizes.spaceBwItems,
              ),
              Obx(
                () => Text(
                  'Health Status : ${healthStatus.value}',
                  style: GoogleFonts.aDLaMDisplay(fontSize: 20),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  void calculateBMI() {
    double weight = double.tryParse(weightController.text) ?? 0.0;
    double height = double.tryParse(heightController.text) ?? 0.0;

    if (weight > 0 && height > 0) {
      double bmi = weight / ((height / 100) * (height / 100));
      bmiResult.value = bmi;

      setHealthStatus(bmiResult.value);
    } else {
      bmiResult.value = 0.0;
    }
  }

  void setHealthStatus(double bmiResult) {
    if (bmiResult < 18.5) {
      healthStatus.value = 'Underweight';
    } else if (bmiResult < 25) {
      healthStatus.value = 'Normal weight';
    } else if (bmiResult < 30) {
      healthStatus.value = 'Overweight';
    } else {
      healthStatus.value = 'Obese';
    }
  }
}
