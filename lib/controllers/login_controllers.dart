import 'package:diagnosis_accuracy/services/firebase_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginControllers extends GetxController {
  final AuthController _authController = Get.find();
  final eControl = TextEditingController();

  final pControl = TextEditingController();

  final GlobalKey<FormState> loginformKey = GlobalKey<FormState>();

  var isVisible = false.obs;

  String? validateEmail(String? email) {
    if (email == '' || email == null) {
      return 'Email Address required';
    }
    return null;
  }

  String? validatePassword(String? password) {
    if (password == '' || password == null) {
      return 'password required';
    }
    return null;
  }

  void toggleVisibility() {
    isVisible.value = !isVisible.value;
  }

  void login() {
    String email = eControl.text.trim();
    String password = pControl.text.trim();
    _authController.logInUser(email, password);
  }
}
