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

  String? validateAge(int? age) {
    if (age == null) {
      return 'Patients age required';
    }
    return null;
  }

  String? validateGender(int? gender) {
    if (gender == null) {
      return 'Patient\'s sex required';
    }
    return null;
  }

  String? validateTBilirubin(int? tBilirubin) {
    if (tBilirubin == null) {
      return 'Total bilirubin score required';
    }
    return null;
  }

  String? validateDBilrubin(int? dBilirubin) {
    if (dBilirubin == null) {
      return 'Direct bilirubin score required';
    }
    return null;
  }

  String? validateAlkalinep(int? ap) {
    if (ap == null) {
      return 'Patient\'s Alkaline-phosphate score is required';
    }
    return null;
  }

  String? validateAlaine(int? alamine) {
    if (alamine == null) {
      return 'Patient\'s Alamine-aminotransferase score required';
    }
    return null;
  }

  String? validateAspartate(int? aspartate) {
    if (aspartate == null) {
      return 'Patient\'s Aspartate-aminosferase score required';
    }
    return null;
  }

  String? validateTProteins(int? proteins) {
    if (proteins == null) {
      return 'Patient\'s Total protein score required';
    }
    return null;
  }

  String? validateAlbumin(int? albumin) {
    if (albumin == null) {
      return 'Patient\'s albuin score required';
    }
    return null;
  }

  String? validateAGRatio(int? ag) {
    if (ag == null) {
      return 'Patient\'s Albumin-to-Globulin ratio score required';
    }
    return null;
  }
}
