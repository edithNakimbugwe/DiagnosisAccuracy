import 'package:diagnosis_accuracy/controllers/login_controllers.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginControllers>(() => LoginControllers());
  }

  //login
}
