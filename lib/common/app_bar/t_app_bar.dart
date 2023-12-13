import 'package:body_gauge/feautures/body_guage/screens/home/home.dart';
import 'package:body_gauge/utils/constants/colors.dart';
import 'package:body_gauge/utils/constants/t_sizes.dart';
import 'package:body_gauge/utils/device/device_utility.dart';
import 'package:body_gauge/utils/helpers/t_helper_function.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar(
      {super.key,
      this.actions,
      this.leadingIcon,
      this.leadingOnPressed,
      this.showBackArrow = false,
      this.title});

  final Widget? title;
  final bool showBackArrow;
  final List<Widget>? actions;
  final IconData? leadingIcon;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.offAll(() => const HomePage()),
                icon: Icon(
                  FontAwesomeIcons.arrowLeft,
                  color: dark ? TColors.white : TColors.white,
                ))
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPressed, icon: Icon(leadingIcon))
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
