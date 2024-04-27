import 'package:diagnosis_accuracy/services/firebase_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpControllers extends GetxController {
  final AuthController _authController = Get.find();

  final e1Control = TextEditingController();

  final p1Control = TextEditingController();
  final p2Control = TextEditingController();
  final n1Control = TextEditingController();
  final n2Control = TextEditingController();
  final dControl = TextEditingController();
  final cControl = TextEditingController();
  final oControl = TextEditingController();
  final sControl = TextEditingController();

  final GlobalKey<FormState> signupformKey = GlobalKey<FormState>();

  var isVisible = false.obs;
  var isSeen = true.obs;

  String? validateEmail(String? email) {
    if (email == '' || email == null) {
      return 'Email Address required';
    }
    String pattern = r'\w+@\w+\.\w+';
    RegExp reg = RegExp(pattern);
    if (!reg.hasMatch(email)) {
      return 'Invalid Email format';
    }

    return null;
  }

  String? validatePassword(String? password) {
    if (password == '' || password == null) {
      return 'password required';
    }
    return null;
  }

  String? validateName(String? name) {
    if (name == '' || name == null) {
      return 'Name Field cannot be empty';
    }
    return null;
  }

  String? validateDate(String? date) {
    if (date == '' || date == null) {
      return 'Enter Date Of Birth';
    }
    return null;
  }

  String? validateCountry(String? country) {
    if (country == '' || country == null) {
      return 'Country of residence is required';
    }
    return null;
  }

  String? validateOccupation(String? occupation) {
    if (occupation == '' || occupation == null) {
      return 'Your occupation is required';
    }
    return null;
  }

  String? validateSpecialty(String? specialty) {
    if (specialty == '' || specialty == null) {
      return 'Enter your specialty';
    }
    return null;
  }

  void toggleVisibility() {
    isVisible.value = !isVisible.value;
  }

  void toggleVisibility2() {
    isSeen.value = !isSeen.value;
  }

  void registerUser() {
    String email = e1Control.text.trim();
    String password = p1Control.text.trim();
    _authController.signUpUser(email, password);
  }
}
