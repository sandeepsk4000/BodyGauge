import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TDeviceUtils {
    static double getScreenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }
  static double getScreenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }
    static double appBarHeight(){
    return kToolbarHeight;
  }
  static double getAppBarHeight(){
    return kToolbarHeight;}
  

  }