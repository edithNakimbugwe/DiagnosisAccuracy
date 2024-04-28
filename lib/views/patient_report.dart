import 'package:diagnosis_accuracy/services/firebase_services.dart';
import 'package:diagnosis_accuracy/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PatientReportView extends StatelessWidget {
  const PatientReportView({super.key});

  @override
  Widget build(BuildContext context) {
    final authControl = Get.put(AuthController());

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          elevation: 0,
          title: Center(
            child: TextWidget(
              text: 'REPORT',
              isHeading: true,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextWidget(
                    text: 'Patient Data',
                    isHeading: true,
                  ),
                  Center(
                    child: GetBuilder<AuthController>(
                      builder: (_) => Obx(() {
                        final patientData = authControl.patientData.value;

                        final dataWithoutBraces = patientData
                            .trim()
                            .replaceAll(RegExp(r'^\{|\}$'), '');

                        final dataPoints = dataWithoutBraces.split(',');

                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: dataPoints.length,
                          itemBuilder: (context, index) {
                            final dataPoint = dataPoints[index];

                            final formattedDataPoint = dataPoint;

                            return Row(
                              children: [
                                Text(
                                  formattedDataPoint,
                                  style: const TextStyle(
                                    wordSpacing: 40,
                                    letterSpacing: 1.5,
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                              ],
                            );
                          },
                        );
                      }),
                    ),
                  ),
                  TextWidget(
                    text: 'Scores',
                    isHeading: true,
                  ),
                  Center(
                    child: GetBuilder<AuthController>(
                      builder: (_) => Obx(() {
                        final labResultsData = authControl.labResultsData.value;

                        final dataWithoutBraces = labResultsData
                            .trim()
                            .replaceAll(RegExp(r'^\{|\}$'), '');

                        final dataPoints = dataWithoutBraces.split(',');

                        return ListView.builder(
                            shrinkWrap: true,
                            itemCount: dataPoints.length,
                            itemBuilder: (context, index) {
                              final dataPoint = dataPoints[index];

                              final formattedLabDataPoint = dataPoint;

                              return Row(
                                children: [
                                  Text(
                                    formattedLabDataPoint,
                                    style: const TextStyle(
                                      wordSpacing: 40,
                                      letterSpacing: 1.5,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                ],
                              );
                            });
                      }),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightGreen,
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Colors.amber[50],
                                title: TextWidget(
                                  text: 'Saved',
                                  isHeading: true,
                                  colors: Colors.lightGreen,
                                ),
                                content: TextWidget(
                                    text: 'Report Successfully Saved!'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: TextWidget(
                                      text: 'OK',
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: TextWidget(
                          text: 'Save',
                          isHeading: true,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightGreen,
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Colors.amber[50],
                                title: TextWidget(
                                  text: 'Print?',
                                  isHeading: true,
                                  colors: Colors.lightGreen,
                                ),
                                content: TextWidget(
                                    text:
                                        'Ensure that you\'re connected to a printer'),
                                actions: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: TextWidget(
                                          text: 'connect',
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: TextWidget(
                                          text: 'OK',
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              );
                            },
                          );
                        },
                        child: TextWidget(
                          text: 'Print',
                          isHeading: true,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        backgroundColor: Colors.amber[50],
      ),
    );
  }
}
