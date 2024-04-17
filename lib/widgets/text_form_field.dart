import 'package:diagnosis_accuracy/widgets/text_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GeneralTextFormFieldWidget extends StatelessWidget {
  GeneralTextFormFieldWidget(
      {super.key,
      required this.validation,
      required this.text,
      this.colors = Colors.black,
      required this.controller,
      required this.hint});

  final TextWidget text;

  Color colors;
  final Function validation;
  final TextEditingController controller;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => validation(value),
      controller: controller,
      decoration: InputDecoration(
        label: text,
        hintText: hint,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.lightGreen),
        ),
      ),
    );
  }
}
