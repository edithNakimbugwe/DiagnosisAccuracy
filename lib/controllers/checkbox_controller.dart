import 'package:get/get.dart';

class CheckBoxController extends GetxController {
  var isChecked = false.obs;

  void toggleChecked() {
    isChecked.toggle();
  }
}
