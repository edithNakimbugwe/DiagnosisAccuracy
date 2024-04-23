import 'package:diagnosis_accuracy/views/home_view.dart';
import 'package:diagnosis_accuracy/views/onboarding/onboarding_view.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late Rx<User?> _firebaseUser;

  @override
  void onReady() {
    super.onReady();
    _firebaseUser = Rx<User?>(_auth.currentUser);
    _firebaseUser.bindStream(_auth.authStateChanges());
    ever(_firebaseUser, pager);
  }

  void pager(User? user) {
    if (user != null) {
      Get.offAll(() => HomePage());
    } else {
      Get.offAll(() => const OnBoardingView());
    }
  }

  void signUpUser(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar('error', e.toString());
    }
  }

  void logInUser(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      String e = 'Invalid credentials';
      Get.snackbar('error', e,
          backgroundColor: const Color.fromRGBO(240, 5, 5, 0.765));
    }
  }

  void logOutUser() async {
    try {
      await _auth.signOut();
    } catch (e) {
      String e = 'Invalid credentials';
      Get.snackbar('error', e,
          backgroundColor: const Color.fromRGBO(240, 5, 5, 0.765));
    }
  }

  void addPatientData(
      {required String patientName,
      required String patientID,
      required String phoneNumber,
      required String address,
      required String currentMedication,
      required String allergies}) async {
    try {
      DatabaseReference patientRef =
          FirebaseDatabase.instance.ref().child('patients');

      Map data = {
        'patientID': patientID,
        'patientName': patientName,
        'patientPhoneNo': phoneNumber,
        'patientAddress': address,
        'patientCurrentMedication': currentMedication,
        'patientAllergies': allergies,
      };

      await patientRef.set(data);
    } catch (e) {
      Get.snackbar('error', e.toString());
    }
  }
}
