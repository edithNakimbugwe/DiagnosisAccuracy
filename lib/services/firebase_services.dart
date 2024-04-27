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

  final patientData = ''.obs;
  final labResultsData = ''.obs;

  @override
  void onReady() {
    super.onReady();
    _firebaseUser = Rx<User?>(_auth.currentUser);
    _firebaseUser.bindStream(_auth.authStateChanges());
    ever(_firebaseUser, pager);
    retrievePatientData();
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
        'PhoneNo_': phoneNumber,
        'Address': address,
        'CurrentMedication': currentMedication,
        'Allergies': allergies,
      };

      await patientRef.set(data);
    } catch (e) {
      Get.snackbar('error', e.toString());
    }
  }

  void retrievePatientData() {
    DatabaseReference patientRef =
        FirebaseDatabase.instance.ref().child('patients');
    patientRef.once().then((snap) {
      patientData.value = snap.snapshot.value.toString();
    });
  }

  void addLabResultsData(
      {required String age,
      required String alb,
      required String alp,
      required String alt,
      required String ast,
      required String bil,
      required String che,
      required String chol,
      required String ggt,
      required String prot}) async {
    try {
      DatabaseReference patientRef =
          FirebaseDatabase.instance.ref().child('lab_results');

      Map data = {
        'Age': age,
        'Albumin': alb,
        'ALkaline_Phosphate': alp,
        'Alanine_Aminotransferase': alt,
        'Aspartate_Aminotransferase': ast,
        'Bilirubin': bil,
        'Cholinesterase': che,
        'Cholesterol': chol,
        'Gamma_Glutamyl_Transferase': ggt,
        'Total_Protein': prot
      };

      await patientRef.set(data);
    } catch (e) {
      Get.snackbar('error', e.toString());
    }
  }

  void retrieveLabResultsData() {
    DatabaseReference labResultsRef =
        FirebaseDatabase.instance.ref().child('lab_results');
    labResultsRef.once().then((snap) {
      labResultsData.value = snap.snapshot.value.toString();
    });
  }
}
