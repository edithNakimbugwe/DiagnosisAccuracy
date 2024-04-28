import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PatientDataController extends GetxController {
  final patientName = TextEditingController();
  final patientID = TextEditingController();
  final patientTel = TextEditingController();
  final patientAddress = TextEditingController();
  final currentMedication = TextEditingController();
  final patientAllergies = TextEditingController();

  final GlobalKey<FormState> patientDataFormKey = GlobalKey<FormState>();

  String? validatePatientName(String? email) {
    if (email == '' || email == null) {
      return 'Patient name required';
    }
    return null;
  }

  String? validatePatientID(String? password) {
    if (password == '' || password == null) {
      return 'Patient ID is required';
    }
    return null;
  }

  String? validatePatientTel(String? number) {
    if (number == '' || number == null) {
      return 'Enter Patient\' phone number';
    }
    String pattern = r'^\d+$';
    RegExp reg = RegExp(pattern);
    if (!reg.hasMatch(number)) {
      return 'Invalid phone number format';
    }

    return null;
  }

  String? validatePatientAddress(String? date) {
    if (date == '' || date == null) {
      return 'Enter Patient\'s residential address';
    }
    return null;
  }

  String? validateCurrentMedication(String? country) {
    if (country == '' || country == null) {
      return 'if not on any put null';
    }
    return null;
  }

  String? validatePatientAllergies(String? occupation) {
    if (occupation == '' || occupation == null) {
      return 'if no allergies, put null';
    }
    return null;
  }
}
