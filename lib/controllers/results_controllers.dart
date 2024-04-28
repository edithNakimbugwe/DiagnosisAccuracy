import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultsControllers extends GetxController {
  final t1Control = TextEditingController();
  final t2Control = TextEditingController();
  final t3Control = TextEditingController();
  final t4Control = TextEditingController();
  final t5Control = TextEditingController();
  final t6Control = TextEditingController();
  final t7Control = TextEditingController();
  final t8Control = TextEditingController();
  final t9Control = TextEditingController();
  final t10Control = TextEditingController();

  final GlobalKey<FormState> resultsFormKey = GlobalKey<FormState>();

  String? validateAge(String? age) {
    if (age == '' || age == null) {
      return 'value required';
    }
    String pattern = r'^\d+$';
    RegExp reg = RegExp(pattern);
    if (!reg.hasMatch(age)) {
      return 'Insert Numeric!';
    }
    return null;
  }

  String? validateAlb(String? alb) {
    if (alb == '' || alb == null) {
      return 'value required';
    }
    String pattern = r'^\d+$';
    RegExp reg = RegExp(pattern);
    if (!reg.hasMatch(alb)) {
      return 'Insert Numeric!';
    }
    return null;
  }

  String? validateAlp(String? alp) {
    if (alp == '' || alp == null) {
      return 'value required';
    }
    String pattern = r'^\d+$';
    RegExp reg = RegExp(pattern);
    if (!reg.hasMatch(alp)) {
      return 'Insert Numeric!';
    }
    return null;
  }

  String? validateAlt(String? alt) {
    if (alt == '' || alt == null) {
      return 'value required';
    }
    String pattern = r'^\d+$';
    RegExp reg = RegExp(pattern);
    if (!reg.hasMatch(alt)) {
      return 'Insert Numeric!';
    }
    return null;
  }

  String? validateAst(String? ast) {
    if (ast == '' || ast == null) {
      return 'value required';
    }
    String pattern = r'^\d+$';
    RegExp reg = RegExp(pattern);
    if (!reg.hasMatch(ast)) {
      return 'Insert Numeric!';
    }
    return null;
  }

  String? validateBil(String? bil) {
    if (bil == '' || bil == null) {
      return 'value required';
    }
    String pattern = r'^\d+$';
    RegExp reg = RegExp(pattern);
    if (!reg.hasMatch(bil)) {
      return 'Insert Numeric!';
    }
    return null;
  }

  String? validateChe(String? che) {
    if (che == '' || che == null) {
      return 'value required';
    }
    String pattern = r'^\d+$';
    RegExp reg = RegExp(pattern);
    if (!reg.hasMatch(che)) {
      return 'Insert Numeric!';
    }
    return null;
  }

  String? validateCho(String? cho) {
    if (cho == '' || cho == null) {
      return 'value required';
    }
    String pattern = r'^\d+$';
    RegExp reg = RegExp(pattern);
    if (!reg.hasMatch(cho)) {
      return 'Insert Numeric!';
    }
    return null;
  }

  String? validateProteins(String? prot) {
    if (prot == '' || prot == null) {
      return 'value required';
    }
    String pattern = r'^\d+$';
    RegExp reg = RegExp(pattern);
    if (!reg.hasMatch(prot)) {
      return 'Insert Numeric!';
    }
    return null;
  }

  String? validateGgt(String? ggt) {
    if (ggt == '' || ggt == null) {
      return 'value required';
    }
    return null;
  }
}
