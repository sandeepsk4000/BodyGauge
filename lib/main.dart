import 'package:body_gauge/feautures/body_guage/screens/home/home.dart';
import 'package:body_gauge/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'BodyGauge',
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        home: const HomePage());
  }
}
