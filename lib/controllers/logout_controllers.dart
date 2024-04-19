import 'package:diagnosis_accuracy/services/firebase_services.dart';
import 'package:get/get.dart';

class LogOutController extends GetxController {
  final AuthController _authController = Get.find();

  void logout() {
    _authController.logOutUser();
  }
}
