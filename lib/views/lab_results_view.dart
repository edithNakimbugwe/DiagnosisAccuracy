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
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
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
                              height: 50,
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
                              height: 50,
                              child: GeneralTextFormFieldWidget(
                                  validation: resultsControl.validateAlb,
                                  text: TextWidget(text: ''),
                                  controller: resultsControl.t2Control,
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
                              height: 50,
                              child: GeneralTextFormFieldWidget(
                                  validation: resultsControl.validateAlp,
                                  text: TextWidget(text: ''),
                                  controller: resultsControl.t3Control,
                                  hint: '20-140'),
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
                              height: 50,
                              child: GeneralTextFormFieldWidget(
                                  validation: resultsControl.validateAlt,
                                  text: TextWidget(text: ''),
                                  controller: resultsControl.t4Control,
                                  hint: '5-56'),
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
                            TextWidget(text: 'Aspartate\naminotransferase'),
                            const SizedBox(
                              width: 100,
                            ),
                            SizedBox(
                              width: 100,
                              height: 50,
                              child: GeneralTextFormFieldWidget(
                                  validation: resultsControl.validateAst,
                                  text: TextWidget(text: ''),
                                  controller: resultsControl.t5Control,
                                  hint: '10-40'),
                            ),
                            TextWidget(text: 'IU/L')
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
                              height: 50,
                              child: GeneralTextFormFieldWidget(
                                  validation: resultsControl.validateBil,
                                  text: TextWidget(text: ''),
                                  controller: resultsControl.t6Control,
                                  hint: ' 0.1-1.2 '),
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
                              height: 50,
                              child: GeneralTextFormFieldWidget(
                                  validation: resultsControl.validateChe,
                                  text: TextWidget(text: ''),
                                  controller: resultsControl.t7Control,
                                  hint: '5000-13000'),
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
                            TextWidget(text: 'Cholesterol'),
                            const SizedBox(
                              width: 140,
                            ),
                            SizedBox(
                              width: 100,
                              height: 50,
                              child: GeneralTextFormFieldWidget(
                                  validation: resultsControl.validateCho,
                                  text: TextWidget(text: ''),
                                  controller: resultsControl.t8Control,
                                  hint: '<200'),
                            ),
                            TextWidget(text: 'mg/dL')
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
                              height: 50,
                              child: GeneralTextFormFieldWidget(
                                  validation: resultsControl.validateGgt,
                                  text: TextWidget(text: ''),
                                  controller: resultsControl.t9Control,
                                  hint: '5-48'),
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
                            TextWidget(text: 'Total Proteins'),
                            const SizedBox(
                              width: 130,
                            ),
                            SizedBox(
                              width: 100,
                              height: 50,
                              child: GeneralTextFormFieldWidget(
                                  validation: resultsControl.validateProteins,
                                  text: TextWidget(text: ''),
                                  controller: resultsControl.t10Control,
                                  hint: '6-8.3'),
                            ),
                            TextWidget(text: 'g/dL')
                          ],
                        ),
                      ],
                    ))),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreen,
                    ),
                    onPressed: () {
                      if (resultsControl.resultsFormKey.currentState!
                          .validate()) {
                        AuthController.instance.addLabResultsData(
                          age: resultsControl.t1Control.text.trim(),
                          alb: resultsControl.t2Control.text.trim(),
                          alp: resultsControl.t3Control.text.trim(),
                          alt: resultsControl.t4Control.text.trim(),
                          ast: resultsControl.t5Control.text.trim(),
                          bil: resultsControl.t6Control.text.trim(),
                          che: resultsControl.t7Control.text.trim(),
                          chol: resultsControl.t8Control.text.trim(),
                          ggt: resultsControl.t9Control.text.trim(),
                          prot: resultsControl.t10Control.text.trim(),
                        );
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
                              content: TextWidget(
                                  text:
                                      'Model Prediction Result will be displayed here!'),
                              actions: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        authControl.retrievePatientData();
                                        authControl.retrieveLabResultsData();
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
                      }
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
