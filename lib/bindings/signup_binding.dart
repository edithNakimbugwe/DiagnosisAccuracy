import 'package:diagnosis_accuracy/controllers/signup_controllers.dart';
import 'package:get/get.dart';

class SignUpBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpControllers>(() => SignUpControllers());
  }
}
