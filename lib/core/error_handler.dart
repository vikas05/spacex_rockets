// core/error_handler.dart


import 'package:get/get.dart';

void showError(String message) {
  Get.snackbar('Error', message, snackPosition: SnackPosition.BOTTOM);
}
