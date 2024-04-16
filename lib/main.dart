import 'package:diagnosis_accuracy/bindings/my_bindings.dart';
import 'package:diagnosis_accuracy/controllers/network_controllers.dart';
import 'package:diagnosis_accuracy/views/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  final NetworkController networkController = NetworkController();
  Get.put(networkController);
  runApp(const HepaCheckApp());
}

class HepaCheckApp extends StatelessWidget {
  const HepaCheckApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const OnBoardingView(),
      initialBinding: MyBindings(),
      debugShowCheckedModeBanner: false,
    );
  }
}
