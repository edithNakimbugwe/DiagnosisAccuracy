import 'package:diagnosis_accuracy/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/dropdown_controller.dart';

class ContactUspage extends StatelessWidget {
  const ContactUspage({super.key});

  @override
  Widget build(BuildContext context) {
    final DropdownController dropdownController = Get.put(DropdownController());
    final List<String> dropdownItems = ['Help', 'Bug', 'Suggestions', 'Other'];
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: TextWidget(
            text: 'Contact Us',
            isHeading: true,
          )),
          backgroundColor: Colors.lightGreen,
          elevation: 0,
        ),
        body: Padding(
            padding: const EdgeInsets.fromLTRB(30, 60, 30, 0),
            child: SizedBox(
              width: 450,
              height: 200,
              child: Obx(
                () => DropdownButtonFormField<String>(
                  value: dropdownController.selectedItem.value.isNotEmpty
                      ? dropdownController.selectedItem.value
                      : dropdownItems.first,
                  items: dropdownItems.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    dropdownController.updateSelectedItem(newValue.toString());
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.lightGreen)),
                  ),
                  dropdownColor: Colors.lightGreen,
                ),
              ),
            )));
  }
}
