import 'package:diagnosis_accuracy/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CustomPasswordFormField extends StatelessWidget {
  final TextEditingController controller;
  final bool isVisible;
  final VoidCallback userFunction;
  final String hintText;
  final TextWidget text;
  // ignore: prefer_typing_uninitialized_variables
  final validate;
  const CustomPasswordFormField(
      {super.key,
      required this.userFunction,
      required this.controller,
      required this.hintText,
      required this.isVisible,
      required this.text,
      required this.validate});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isVisible,
      validator: validate,
      decoration: InputDecoration(
        label: text,
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 15),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.lightGreen),
        ),
        suffixIcon: IconButton(
          onPressed: userFunction,
          icon: isVisible == true
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.visibility),
          color: Colors.lightGreen,
        ),
      ),
    );
  }
}
