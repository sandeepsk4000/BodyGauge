
import 'package:get/get.dart';

class WeightController extends GetxController {
  RxInt selectedWeight = 10.obs; // Initial weight value

  void setSelectedWeight(int weight) {
    selectedWeight.value = weight;
  }
}