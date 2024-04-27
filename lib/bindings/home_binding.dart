import 'package:diagnosis_accuracy/controllers/patient_data_controllers.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PatientDataController>(() => PatientDataController());
  }
}
