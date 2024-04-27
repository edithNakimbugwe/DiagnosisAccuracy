import 'package:diagnosis_accuracy/bindings/my_bindings.dart';
import 'package:diagnosis_accuracy/controllers/network_controllers.dart';
import 'package:diagnosis_accuracy/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bindings/page_routing_binder.dart';
import 'services/firebase_services.dart';
import 'themes/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then(
    (value) => Get.put(
      AuthController(),
    ),
  );
  final NetworkController networkController = NetworkController();
  Get.put(networkController);
  runApp(const HepaCheckApp());
}

class HepaCheckApp extends StatelessWidget {
  const HepaCheckApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: MyBindings(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      getPages: getpages,
    );
  }
}
