import 'package:get/get.dart';

class DropdownController extends GetxController {
  var selectedItem = ''.obs;

  void updateSelectedItem(String value) {
    selectedItem.value = value;
  }
}
