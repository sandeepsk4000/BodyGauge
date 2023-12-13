import 'package:body_gauge/common/text/content_text.dart';
import 'package:body_gauge/common/text/main_heading.dart';
import 'package:body_gauge/common/text/sub_heading_text.dart';
import 'package:body_gauge/utils/constants/t_sizes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
            title: Row(
          children: [
            Text(
              "About Body Gauge",
              style: GoogleFonts.abel(fontSize: 30, color: Colors.black),
            ),
            const SizedBox(
              width: 5,
            ),
            const Icon(FontAwesomeIcons.dumbbell)
          ],
        )),
        body: Padding(
            padding:  const EdgeInsets.all(TSizes.defaultSpace),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ContentText(
                      text:
                          "Welcome to Body_Gauge, your personal fitness companion dedicated to helping you achieve your health goals effectively and efficiently.",
                    ),
                    const SizedBox(
                      height: TSizes.spaceBwItems,
                    ),
                    const MainHeading(
                      text: "Features:",
                    ),
                    const SizedBox(height: TSizes.md),
                    const SubHeadingText(
                      text: "BMR (Basal Metabolic Rate) Calculator:",
                    ),
                    const SizedBox(height: TSizes.sm),
                    const ContentText(
                        text:
                            " Discover your Basal Metabolic Rate, the number of calories your body needs at rest to maintain basic physiological functions. Understanding your BMR is essential for creating personalized nutrition and fitness plans."),
                    const SizedBox(
                      height: TSizes.sm,
                    ),
                    const SubHeadingText(
                        text: "BMI (Body Mass Index) Calculator:"),
                    const SizedBox(
                      height: TSizes.sm,
                    ),
                    const ContentText(
                        text:
                            "Calculate your Body Mass Index, a crucial indicator of whether your weight falls within a healthy range. Determine if you are underweight, normal weight, overweight, or obese based on scientific standards."),
                    const SizedBox(
                      height: TSizes.sm,
                    ),
                    const SubHeadingText(
                        text: "Daily Protein Intake Calculator:"),
                    const SizedBox(
                      height: TSizes.sm,
                    ),
                    const ContentText(
                        text:
                            " Find out your recommended daily protein intake tailored to your lifestyle and fitness objectives. Protein is essential for muscle repair, growth, and overall body function. Optimize your diet by understanding your protein needs."),
                    const SizedBox(
                      height: TSizes.md,
                    ),
                    const MainHeading(text: "How to Use Body_Gauge:"),
                    const SizedBox(
                      height: TSizes.sm,
                    ),
                    const ContentText(
                        text:
                            "Simply input your personal information such as age, gender, weight, and height into the respective calculators. Body_Guage will instantly generate accurate results, empowering you with the knowledge to make informed decisions about your health and fitness journey."),
                    const ContentText(
                        text:
                            "Stay motivated and on track with your fitness goals using Body_Guage's user-friendly interface and precise calculations. Whether you're a fitness enthusiast, a health-conscious individual, or just starting your wellness journey, Body_Guage is here to support and guide you every step of the way."),
                    const ContentText(
                        text:
                            "We're committed to providing you with a reliable tool to enhance your health and well-being. Your feedback is valuable to us! Feel free to reach out with any suggestions or questions."),
                    const SizedBox(height: TSizes.md),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Start your journey to a healthier lifestyle today with -",
                          style: GoogleFonts.aclonica(color: Colors.black),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          " Body_Gauge!",
                          style: GoogleFonts.dancingScript(
                              color: Colors.red,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ]),
            )));
  }
}
