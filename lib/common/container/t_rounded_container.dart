import 'package:body_gauge/utils/constants/colors.dart';
import 'package:body_gauge/utils/constants/t_sizes.dart';
import 'package:body_gauge/utils/helpers/t_helper_function.dart';
import 'package:flutter/material.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer(
      {super.key, this.child, required this.width, required this.height});
  final Widget? child;
  final double width, height;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSizes.md),
          color: dark ? TColors.darkERGrey : Colors.grey.shade300),
      child: child,
    );
  }
}
