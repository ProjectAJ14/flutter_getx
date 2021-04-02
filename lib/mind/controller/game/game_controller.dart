import 'dart:math';

import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class GameController extends GetxController {
  var first = 0.obs;
  var second = 0.obs;

  int get sum => first.value + second.value;

  int target = Random().nextInt(10) - Random().nextInt(10);

  bool get result => sum == target;

  void incrementFirst() {
    first.value = first.value + 2;
    checkTarget();
  }

  void decrementSecond() {
    second.value = second.value - 1;
    checkTarget();
  }

  void checkTarget() {
    if (result) {
      Get.snackbar(
        'Ohh Yehhh',
        'You are awesome',
        showProgressIndicator: true,
        dismissDirection: SnackDismissDirection.HORIZONTAL,
        snackPosition: SnackPosition.BOTTOM,
      );
    } else {
      Get.snackbar(
        'Nope',
        'You are wrong',
        dismissDirection: SnackDismissDirection.HORIZONTAL,
        snackPosition: SnackPosition.BOTTOM,
        snackStyle: SnackStyle.FLOATING,
      );
    }
  }
}
