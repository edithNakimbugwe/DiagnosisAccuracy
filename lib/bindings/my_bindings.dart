import 'package:diagnosis_accuracy/controllers/network_controllers.dart';
import 'package:diagnosis_accuracy/views/home_view.dart';
import 'package:diagnosis_accuracy/views/onboarding/onboarding_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class MyBindings extends Bindings {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  void dependencies() {
    Get.lazyPut(() => NetworkController());
  }

  Widget _buildAuthenticationStream() {
    return StreamBuilder(
      stream: _auth.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return HomePage();
        } else {
          return OnBoardingView();
        }
      },
    );
  }
}
