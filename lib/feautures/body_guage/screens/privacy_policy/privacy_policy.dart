import 'package:body_gauge/common/text/content_text.dart';
import 'package:body_gauge/common/text/main_heading.dart';
import 'package:body_gauge/common/text/small_heading.dart';
import 'package:body_gauge/common/text/sub_heading_text.dart';
import 'package:body_gauge/utils/constants/t_sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Privacy Policy",
          style: GoogleFonts.abel(
              fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: TSizes.spaceBwItems,
                ),
                MainHeading(
                    text:
                        "Body Gauge App Privacy Policy(Updated with Data Storage Information)"),
                SizedBox(
                  height: TSizes.sm,
                ),
                ContentText(
                    text:
                        "This Privacy Policy describes how Body Gauge App  collects, uses, and shares your personal information when you use the App."),
                SizedBox(
                  height: TSizes.sm,
                ),
                SubHeadingText(text: "Information We Collect:"),
                SizedBox(
                  height: TSizes.md,
                ),
                SubHeadingText(
                    text:
                        "The App collects the following types of limited personal information:"),
                SizedBox(
                  height: TSizes.sm,
                ),
                SmallHeading(
                  title: "Weight:",
                ),
                SizedBox(
                  height: TSizes.sm,
                ),
                ContentText(
                    text:
                        "This information is used to calculate your Body Mass Index (BMI)."),
                SizedBox(
                  height: TSizes.sm,
                ),
                SmallHeading(title: "Height: "),
                SizedBox(
                  height: TSizes.sm,
                ),
                ContentText(
                    text:
                        "This information is used to calculate your BMI and Basal Metabolic Rate (BMR)."),
                SizedBox(
                  height: TSizes.sm,
                ),
                SmallHeading(title: "Gender: "),
                SizedBox(
                  height: TSizes.sm,
                ),
                ContentText(
                    text:
                        "This information helps to personalize your BMR calculation"),
                SizedBox(
                  height: TSizes.md,
                ),
                SmallHeading(title: "Important Note:"),
                SizedBox(
                  height: TSizes.sm,
                ),
                ContentText(
                    text:
                        "We do not store any user data in a persistent database. This means that your personal information is not saved on your device or on our servers"),
                SizedBox(
                  height: TSizes.md,
                ),
                SubHeadingText(text: "How We Use Your Information :"),
                SizedBox(
                  height: TSizes.sm,
                ),
                ContentText(
                    text:
                        "We use your personal information only for the duration of your current App session for the following purposes:"),
                SizedBox(
                  height: TSizes.sm,
                ),
                SmallHeading(title: "Calculate your BMI and BMR: "),
                SizedBox(
                  height: TSizes.sm,
                ),
                ContentText(
                    text:
                        "This helps you to understand your health and fitness better."),
                SizedBox(
                  height: TSizes.sm,
                ),
                SmallHeading(title: "Personalize your app experience:"),
                SizedBox(
                  height: TSizes.sm,
                ),
                ContentText(
                    text:
                        "This helps you to understand your health and fitness better."),
                SizedBox(
                  height: TSizes.sm,
                ),
                SmallHeading(title: "Improve the App:"),
                SizedBox(
                  height: TSizes.sm,
                ),
                ContentText(
                    text:
                        "We may use aggregated, anonymized data to improve the App's functionality and user experience."),
                SizedBox(
                  height: TSizes.md,
                ),
                SubHeadingText(text: "Sharing Your Information:"),
                SizedBox(
                  height: TSizes.sm,
                ),
                ContentText(
                    text:
                        "We do not share your personal information with any third parties under any circumstances."),
                SizedBox(
                  height: TSizes.md,
                ),
                SubHeadingText(text: "Your Choices"),
                SizedBox(
                  height: TSizes.md,
                ),
                ContentText(
                    text:
                        "Since your data is not stored, there is no need for options to access, update, or delete it."),
                SizedBox(
                  height: TSizes.md,
                ),
                SubHeadingText(text: " Data Security"),
                SizedBox(height: TSizes.sm),
                ContentText(
                    text:
                        "As your personal information is not stored, the risk of data breaches or unauthorized access is significantly reduced. We maintain industry-standard security practices to protect the App itself from vulnerabilities."),
                SizedBox(height: TSizes.md),
                SubHeadingText(text: "Children's Privacy"),
                SizedBox(height: TSizes.sm),
                ContentText(
                    text:
                        "We do not knowingly collect personal information from children under the age of 13. If you are a parent or guardian and you believe that your child has provided us with personal information, please contact us at sandeepsk4000@gmail.com."),
                SizedBox(height: TSizes.md),
                SubHeadingText(text: "Changes to This Privacy Policy"),
                SizedBox(height: TSizes.sm),
                ContentText(
                    text:
                        "We may update this Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page."),
                SizedBox(height: TSizes.md),
                SubHeadingText(text: "Contact Us"),
                SizedBox(height: TSizes.sm),
                ContentText(
                    text:
                        "If you have any questions about this Privacy Policy, please contact us at sandeepsk4000@gmail.com"),
                SizedBox(height: TSizes.md),
                SubHeadingText(text: "Additional Information"),
                SizedBox(height: TSizes.sm),
                ContentText(
                    text:
                        "This Privacy Policy is intended to be used for the Body Gauge App specifically. You may need to modify it to fit the specific functionalities and data collection practices of your app."),
                SizedBox(height: TSizes.sm),
                ContentText(
                    text:
                        "We recommend reviewing your Privacy Policy regularly to ensure that it is accurate and up-to-date."),
                SizedBox(height: TSizes.md),
                ContentText(
                    text:
                        "We hope this revised Privacy Policy clarifies how we handle your personal information in light of the data storage details.")
              ],
            )),
      ),
    );
  }
}
