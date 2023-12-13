import 'package:body_gauge/common/app_bar/t_app_bar.dart';
import 'package:body_gauge/common/container/t_circular_container.dart';
import 'package:body_gauge/common/container/t_rounded_container.dart';
import 'package:body_gauge/feautures/body_guage/controller/gender_button_controller.dart';
import 'package:body_gauge/feautures/body_guage/screens/bmi_calculator_screen/widgets/height_and_age_selector_widget.dart';
import 'package:body_gauge/utils/constants/t_sizes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BmiCalculatorScreen extends StatelessWidget {
  const BmiCalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MyController myController =
        Get.put(MyController()); // Instantiate the controller

    return Scaffold(
      appBar: TAppBar(
        title: Text('BMI Calculator',
            style: GoogleFonts.abhayaLibre(fontSize: 40)),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const  EdgeInsets.all(TSizes.md),
          child: Column(
            children: [
              const SizedBox(height: TSizes.spaceBtwSections),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TCircularContainer(
                    icon: FontAwesomeIcons.venus,
                    title: 'Female', // Specify the title for Female button
                    myController: myController,
                  ),
                  TCircularContainer(
                    icon: FontAwesomeIcons.mars,
                    title: 'Male', // Specify the title for Male button
                    myController: myController,
                  ),
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBwItems,
              ),
              TRoundedContainer(
                width: 350,
                height: 500,
                child: HeightAndAgeSelectorWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
