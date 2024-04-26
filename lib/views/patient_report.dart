import 'package:diagnosis_accuracy/services/firebase_services.dart';
import 'package:diagnosis_accuracy/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PatientReportView extends StatelessWidget {
  const PatientReportView({super.key});

  @override
  Widget build(BuildContext context) {
    final authControl = Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          elevation: 0,
          title: Center(
              child: TextWidget(
            text: 'REPORT',
            isHeading: true,
          ))),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: GetBuilder<AuthController>(
                  builder: (_) => Obx(() {
                    return Column(
                      children:
                          authControl.patientData.value.split('\n').map((line) {
                        return Text(line);
                      }).toList(growable: true),
                    );
                  }),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightGreen),
                      onPressed: () {},
                      child: TextWidget(
                        text: 'Save',
                        isHeading: true,
                      )),
                  const SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightGreen),
                      onPressed: () {},
                      child: TextWidget(
                        text: 'Print',
                        isHeading: true,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.amber[50],
    );
  }
}
