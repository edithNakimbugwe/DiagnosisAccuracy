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
      return 'Email Address required';
    }
    return null;
  }

  String? validatePatientID(String? password) {
    if (password == '' || password == null) {
      return 'password required';
    }
    return null;
  }

  String? validatePatientTel(String? name) {
    if (name == '' || name == null) {
      return 'Name Field cannot be empty';
    }
    return null;
  }

  String? validatePatientAddress(String? date) {
    if (date == '' || date == null) {
      return 'Enter Date Of Birth';
    }
    return null;
  }

  String? validateCurrentMedication(String? country) {
    if (country == '' || country == null) {
      return 'Country of residence is required';
    }
    return null;
  }

  String? validatePatientAllergies(String? occupation) {
    if (occupation == '' || occupation == null) {
      return 'Your occupation is required';
    }
    return null;
  }
}
