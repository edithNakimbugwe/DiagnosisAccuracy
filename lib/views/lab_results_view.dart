import 'package:diagnosis_accuracy/controllers/results_controllers.dart';
import 'package:diagnosis_accuracy/services/firebase_services.dart';
import 'package:diagnosis_accuracy/views/patient_report.dart';
import 'package:diagnosis_accuracy/widgets/text_form_field.dart';
import 'package:diagnosis_accuracy/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final resultsControl = Get.put(ResultsControllers());
    final authControl = Get.put(AuthController());

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            elevation: 1,
            title: Center(
              child: TextWidget(
                text: 'SCORE',
                isHeading: true,
              ),
            )),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Form(
                    key: resultsControl.resultsFormKey,
                    child: Center(
                        child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextWidget(text: 'Age'),
                            const SizedBox(
                              width: 200,
                            ),
                            SizedBox(
                              width: 100,
                              height: 30,
                              child: GeneralTextFormFieldWidget(
                                  validation: resultsControl.validateAge,
                                  text: TextWidget(text: ''),
                                  controller: resultsControl.t1Control,
                                  hint: '20'),
                            ),
                            TextWidget(text: 'Years')
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextWidget(text: ' Albumin'),
                            const SizedBox(
                              width: 160,
                            ),
                            SizedBox(
                              width: 100,
                              height: 30,
                              child: GeneralTextFormFieldWidget(
                                  validation: resultsControl.validateTBilirubin,
                                  text: TextWidget(text: ''),
                                  controller: resultsControl.t3Control,
                                  hint: '3.4-5.4'),
                            ),
                            TextWidget(text: 'g/dL')
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextWidget(text: 'Alkaline-phosphate'),
                            const SizedBox(
                              width: 90,
                            ),
                            SizedBox(
                              width: 100,
                              height: 30,
                              child: GeneralTextFormFieldWidget(
                                  validation: resultsControl.validateDBilrubin,
                                  text: TextWidget(text: ''),
                                  controller: resultsControl.t4Control,
                                  hint: '44-147'),
                            ),
                            TextWidget(text: 'IU/L')
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextWidget(text: 'Alanine\naminotransferase'),
                            const SizedBox(
                              width: 110,
                            ),
                            SizedBox(
                              width: 100,
                              height: 30,
                              child: GeneralTextFormFieldWidget(
                                  validation: resultsControl.validateAlkalinep,
                                  text: TextWidget(text: ''),
                                  controller: resultsControl.t5Control,
                                  hint: '4-36'),
                            ),
                            TextWidget(text: 'U/L')
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextWidget(text: 'Aspartate\naminotransferase'),
                            const SizedBox(
                              width: 110,
                            ),
                            SizedBox(
                              width: 100,
                              height: 30,
                              child: GeneralTextFormFieldWidget(
                                  validation: resultsControl.validateAspartate,
                                  text: TextWidget(text: ''),
                                  controller: resultsControl.t7Control,
                                  hint: '8-33'),
                            ),
                            TextWidget(text: 'U/L')
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextWidget(text: ' Bilirubin'),
                            const SizedBox(
                              width: 152,
                            ),
                            SizedBox(
                              width: 100,
                              height: 30,
                              child: GeneralTextFormFieldWidget(
                                  validation: resultsControl.validateAlaine,
                                  text: TextWidget(text: ''),
                                  controller: resultsControl.t6Control,
                                  hint: ' 1.2'),
                            ),
                            TextWidget(text: 'mg/dL')
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextWidget(text: 'Cholinesterase'),
                            const SizedBox(
                              width: 120,
                            ),
                            SizedBox(
                              width: 100,
                              height: 30,
                              child: GeneralTextFormFieldWidget(
                                  validation: resultsControl.validateAlbumin,
                                  text: TextWidget(text: ''),
                                  controller: resultsControl.t9Control,
                                  hint: ''),
                            ),
                            TextWidget(text: 'units')
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextWidget(text: 'Cholesterol'),
                            const SizedBox(
                              width: 145,
                            ),
                            SizedBox(
                              width: 100,
                              height: 30,
                              child: GeneralTextFormFieldWidget(
                                  validation: resultsControl.validateAGRatio,
                                  text: TextWidget(text: ''),
                                  controller: resultsControl.t10Control,
                                  hint: ''),
                            ),
                            TextWidget(text: 'units')
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextWidget(text: 'Gamma-Glutamyl\nTransferase'),
                            const SizedBox(
                              width: 100,
                            ),
                            SizedBox(
                              width: 100,
                              height: 30,
                              child: GeneralTextFormFieldWidget(
                                  validation: resultsControl.validateAGRatio,
                                  text: TextWidget(text: ''),
                                  controller: resultsControl.t10Control,
                                  hint: ''),
                            ),
                            TextWidget(text: 'units')
                          ],
                        ),
                      ],
                    ))),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextWidget(text: 'Proteins'),
                    const SizedBox(
                      width: 180,
                    ),
                    SizedBox(
                      width: 100,
                      height: 30,
                      child: GeneralTextFormFieldWidget(
                          validation: resultsControl.validateTProteins,
                          text: TextWidget(text: ''),
                          controller: resultsControl.t8Control,
                          hint: ''),
                    ),
                    TextWidget(text: 'U/L')
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: ElevatedButton(
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
                              text: 'Diagnostic Outcome',
                              isHeading: true,
                              colors: Colors.lightGreen,
                            ),
                            content: TextWidget(text: 'Super Healthy Liver!'),
                            actions: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      authControl.retrieveSomeData();
                                      Navigator.of(context).pop();
                                      Get.to(() => const PatientReportView());
                                    },
                                    child: TextWidget(
                                      text: 'Analyse result',
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: TextWidget(
                                      text: 'Close',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: TextWidget(text: 'SUBMIT'),
                  ),
                )
              ],
            ),
          ),
        ),
        backgroundColor: Colors.amber[50],
      ),
    );
  }
}
