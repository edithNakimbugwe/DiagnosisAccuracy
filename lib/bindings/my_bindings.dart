import 'package:diagnosis_accuracy/controllers/network_controllers.dart';
import 'package:get/get.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NetworkController());
  }
}
