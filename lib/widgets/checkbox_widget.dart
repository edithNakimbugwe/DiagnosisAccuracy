import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/checkbox_controller.dart';

class CheckBoxWidget extends StatelessWidget {
  final CheckBoxController checkBoxController = Get.put(CheckBoxController());

  CheckBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Checkbox(
          value: checkBoxController.isChecked.value,
          onChanged: (value) {
            checkBoxController.toggleChecked();
          },
        ));
  }
}
