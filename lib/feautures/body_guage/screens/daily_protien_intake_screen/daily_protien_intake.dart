import 'package:body_gauge/common/app_bar/t_app_bar.dart';
import 'package:body_gauge/common/container/t_rounded_container.dart';
import 'package:body_gauge/common/textfield/t_text_field.dart';
import 'package:body_gauge/utils/constants/t_sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class DailyProtienIntakeCalculatorScreen extends StatelessWidget {
  DailyProtienIntakeCalculatorScreen({super.key});
  final TextEditingController weight1Controller = TextEditingController();
  final RxDouble sedentarydpi = 0.0.obs;
  final RxDouble moderatelyActive = 0.0.obs;
  final RxDouble veryActiveDpi = 0.0.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Daily Protien Intake Calculator',
          style: GoogleFonts.abel(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            const Image(
                image: AssetImage('lib/asset/result/sammy-line-29.png')),
            const SizedBox(
              height: TSizes.spaceBwItems,
            ),
            TRoundedContainer(
                width: MediaQuery.of(context).size.width,
                height: 320,
                child: Column(
                  children: [
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),
                    TTextField(
                        Controller1: weight1Controller,
                        label: "Enter your weight(Kg)"),
                    const SizedBox(
                      height: TSizes.spaceBwItems,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(() => Text(
                              "Sedentary Person : ${sedentarydpi.value} Cal",
                              style: GoogleFonts.aDLaMDisplay(
                                  color: Colors.black, fontSize: 16),
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        Obx(() => Text(
                              "Moderately Active Person : ${moderatelyActive.value} Cal",
                              style: GoogleFonts.aDLaMDisplay(
                                  color: Colors.black, fontSize: 16),
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        Obx(() => Text(
                              "Very Active Person : ${veryActiveDpi.value} Cal",
                              style: GoogleFonts.aDLaMDisplay(
                                  color: Colors.black, fontSize: 16),
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: TSizes.spaceBwItems,
                    ),
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ElevatedButton(
                        onPressed: () {
                          // Calculate BMI
                          calculateProteinIntake();
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blueAccent),
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
                  ],
                ))
          ],
        ),
      ),
    );
  }

  void calculateProteinIntake() {
    double weight = double.tryParse(weight1Controller.text) ?? 0.0;
    // Assuming protein intake as 1.8 grams per kg of body weight
    sedentarydpi.value = 0.8 * weight;
    moderatelyActive.value = 1.2 * weight;
    veryActiveDpi.value = 1.8 * weight;
  }
}
