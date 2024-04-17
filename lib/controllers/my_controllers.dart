import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyControllers extends GetxController {
  final eControl = TextEditingController();
  final e1Control = TextEditingController();
  final pControl = TextEditingController();

  final p1Control = TextEditingController();
  final p2Control = TextEditingController();
  final n1Control = TextEditingController();
  final n2Control = TextEditingController();
  final dControl = TextEditingController();
  final cControl = TextEditingController();
  final oControl = TextEditingController();
  final sControl = TextEditingController();
  final GlobalKey<FormState> formKey1 = GlobalKey<FormState>();
  final GlobalKey<FormState> formKey2 = GlobalKey<FormState>();

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
}
