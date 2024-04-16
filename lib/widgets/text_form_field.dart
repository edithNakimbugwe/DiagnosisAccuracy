import 'package:diagnosis_accuracy/my_controllers.dart';
import 'package:diagnosis_accuracy/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget(
      {super.key,
      required this.validation,
      required this.text,
      this.colors = Colors.black,
      this.isPassword = false,
      required this.control2,
      required this.hint});

  final TextWidget text;
  bool isPassword;
  Color colors;
  final Function validation;
  final TextEditingController control2;
  final String hint;

  @override
  Widget build(BuildContext context) {
    final control = Get.put(MyControllers());
    return TextFormField(
        obscureText: isPassword && !control.isVisible.value,
        validator: (value) => validation(value),
        controller: control2,
        decoration: InputDecoration(
          label: text,
          hintText: hint,
          suffixIcon: isPassword
              ? IconButton(
                  icon: Obx(() => Icon(control.isVisible.value
                      ? Icons.visibility
                      : Icons.visibility_off)),
                  onPressed: () {
                    control.toggleVisibility();
                  },
                  color: Colors.lightGreen,
                )
              : null,
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.lightGreen),
          ),
        ));
  }
}
