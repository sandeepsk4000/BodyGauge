import 'package:body_gauge/common/button/t_rounded_textbutton.dart';
import 'package:body_gauge/feautures/body_guage/screens/about/about.dart';
import 'package:body_gauge/feautures/body_guage/screens/bmi_calculator_screen/bmi_calculator_screen.dart';
import 'package:body_gauge/feautures/body_guage/screens/bmr_calculator/bmr_calculator.dart';
import 'package:body_gauge/feautures/body_guage/screens/daily_protien_intake_screen/daily_protien_intake.dart';
import 'package:body_gauge/feautures/body_guage/screens/privacy_policy/privacy_policy.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer(); // Open the drawer
              },
              child: const Icon(Icons.menu, color: Colors.white),
            );
          },
        ),
      ),
      drawer: Drawer(
        elevation: 0,
        width: 270,
        backgroundColor: Colors.grey,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Body Gauge ',
                      style: GoogleFonts.abel(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const Icon(
                      FontAwesomeIcons.dumbbell,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              //tileColor: Colors.grey.shade600

              trailing: const Icon(
                Icons.chevron_right,
                color: Colors.black,
              ),
              title: Text(
                'About',
                style: GoogleFonts.abhayaLibre(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              onTap: () {
                Get.to(() => const AboutPage());
              },
            ),
            const Divider(),
            ListTile(
                //tileColor: Colors.grey.shade600,
                trailing: const Icon(
                  Icons.privacy_tip_outlined,
                  color: Colors.black,
                ),
                title: Text('Privacy and Policy',
                    style: GoogleFonts.abhayaLibre(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                onTap: () => Get.to(() => const PrivacyPolicyPage())),
            const SizedBox(
              height: 370,
            ),
            Center(
              child: Text(
                "Version : 1.0.0",
                style: GoogleFonts.roboto(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedTextButton(
              title: "BMI",
              onPressed: () => Get.to(() => const BmiCalculatorScreen()),
            ),
            const SizedBox(
              width: 20,
            ),
            RoundedTextButton(
              onPressed: () =>
                  Get.to(() => DailyProtienIntakeCalculatorScreen()),
              title: "Protein Intake",
            ),
            const SizedBox(
              width: 20,
            ),
            RoundedTextButton(
              onPressed: () => Get.to(() => BMRCalculator()),
              title: "BMR",
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Body Gauge",
                  style: GoogleFonts.silkscreen(fontSize: 50),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  FontAwesomeIcons.dumbbell,
                  size: 28,
                )
              ],
            ),
            const Image(
              image: AssetImage(
                  'lib/asset/result/jelly-the-character-pumped-his-body.gif'),
            ),
            const SizedBox(
              height: 20,
            ),
            Text('Your Body Gauge is Here',
                style: GoogleFonts.kaushanScript(fontSize: 18)),
            const SizedBox(
              height: 10,
            ),
            const Icon(FontAwesomeIcons.arrowDown, size: 70)
          ],
        ),
      ),
    );
  }
}
