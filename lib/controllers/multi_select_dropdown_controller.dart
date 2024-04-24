import 'package:get/get.dart';

class MultiSelectDropdown extends GetxController {
  List<String> allergyOptions = [
    'Food Allergies',
    'Environmental Allergies',
    'Insect Sting Allergies',
    'Medication Allergies',
    'Latex Allergy',
    'Allergic Contact Dermatitis',
    'Exercise-Induced Allergic Reactions'
  ];

  Rx<List<String>> selectedOptionList = Rx<List<String>>([]);
  var selectedOption = ''.obs;
}
