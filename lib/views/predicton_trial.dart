import 'package:diagnosis_accuracy/controllers/results_controllers.dart';
import 'package:diagnosis_accuracy/widgets/text_form_field.dart';
import 'package:diagnosis_accuracy/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PredictionPage extends StatelessWidget {
  final resultsControl = Get.put(ResultsControllers());
  PredictionPage({Key? key}) : super(key: key);

  Future<void> makePrediction(BuildContext context) async {
    const String url = 'http://41.75.172.166:5000/predict';

    final Map<String, dynamic> requestData = {
      'Age': resultsControl.t1Control.text,
      'ALB': resultsControl.t2Control.text,
      'ALP': resultsControl.t3Control.text,
      'ALT': resultsControl.t4Control.text,
      'AST': resultsControl.t5Control.text,
      'BIL': resultsControl.t6Control.text,
      'CHE': resultsControl.t7Control.text,
      'CHOL': resultsControl.t8Control.text,
      'GGT': resultsControl.t9Control.text,
      'PROT': resultsControl.t10Control.text
    };

    try {
      final http.Response response = await http.post(
        Uri.parse(url),
        body: requestData,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        String prediction = data['prediction'];

        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: TextWidget(text: 'Prediction'),
            content: Text('The predicted result is: $prediction'),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: TextWidget(
                  text: 'OK',
                ),
              ),
            ],
          ),
        );
      } else {
        Get.snackbar('', 'Failed with status code ${response.statusCode}');
      }
    } catch (e) {
      Get.snackbar('failed', e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    final resultsControl = Get.put(ResultsControllers());

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        elevation: 1,
        title: Center(
          child: TextWidget(
            text: 'LAB SCORE',
            isHeading: true,
          ),
        ),
      ),
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
                          const SizedBox(width: 200),
                          SizedBox(
                            width: 100,
                            height: 30,
                            child: GeneralTextFormFieldWidget(
                              validation: resultsControl.validateAge,
                              text: TextWidget(text: ''),
                              controller: resultsControl.t1Control,
                              hint: '20',
                            ),
                          ),
                          TextWidget(text: 'Years')
                        ],
                      ),
                      const SizedBox(height: 20),
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
                                validation: resultsControl.validateAlb,
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
                                validation: resultsControl.validateAlp,
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
                                validation: resultsControl.validateAlt,
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
                                validation: resultsControl.validateAst,
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
                                validation: resultsControl.validateBil,
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
                                validation: resultsControl.validateChe,
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
                                validation: resultsControl.validateCho,
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
                                validation: resultsControl.validateGgt,
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
                        validation: resultsControl.validateProteins,
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
                  onPressed: () => makePrediction(context),
                  child: TextWidget(text: 'SUBMIT'),
                ),
              )
              // Add other form fields here
            ],
          ),
        ),
      ),
      backgroundColor: Colors.amber[50],
    ));
  }
}
