import 'package:diagnosis_accuracy/controllers/dropdown_controller.dart';
import 'package:diagnosis_accuracy/controllers/results_controllers.dart';
import 'package:diagnosis_accuracy/widgets/text_form_field.dart';
import 'package:diagnosis_accuracy/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final resultsControl = Get.put(ResultsControllers());
    final DropdownController dropdownController = Get.put(DropdownController());
    final List<String> dropdownItems = ['F', 'M'];

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
                          mainAxisAlignment: MainAxisAlignment.end,
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
                            TextWidget(text: 'Gender'),
                            const SizedBox(
                              width: 175,
                            ),
                            SizedBox(
                              width: 100,
                              height: 50,
                              child: Obx(
                                () => DropdownButtonFormField<String>(
                                  value: dropdownController
                                          .selectedItem.value.isNotEmpty
                                      ? dropdownController.selectedItem.value
                                      : dropdownItems.first,
                                  items: dropdownItems.map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (newValue) {
                                    dropdownController.updateSelectedItem(
                                        newValue.toString());
                                  },
                                  decoration: const InputDecoration(
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.lightGreen))),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextWidget(text: 'Total_bilirubin'),
                            const SizedBox(
                              width: 112,
                            ),
                            SizedBox(
                              width: 100,
                              height: 30,
                              child: GeneralTextFormFieldWidget(
                                  validation: resultsControl.validateTBilirubin,
                                  text: TextWidget(text: ''),
                                  controller: resultsControl.t3Control,
                                  hint: '1.2'),
                            ),
                            TextWidget(text: 'mg/dL')
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextWidget(text: 'Direct_bilirubin'),
                            const SizedBox(
                              width: 104,
                            ),
                            SizedBox(
                              width: 100,
                              height: 30,
                              child: GeneralTextFormFieldWidget(
                                  validation: resultsControl.validateDBilrubin,
                                  text: TextWidget(text: ''),
                                  controller: resultsControl.t4Control,
                                  hint: '0.3'),
                            ),
                            TextWidget(text: 'mg/dL')
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextWidget(text: 'Alkaline-phosphate'),
                            const SizedBox(
                              width: 94,
                            ),
                            SizedBox(
                              width: 100,
                              height: 30,
                              child: GeneralTextFormFieldWidget(
                                  validation: resultsControl.validateAlkalinep,
                                  text: TextWidget(text: ''),
                                  controller: resultsControl.t5Control,
                                  hint: '44-147'),
                            ),
                            TextWidget(text: 'IU/L')
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextWidget(text: 'Alamine_aminotransferase'),
                            const SizedBox(
                              width: 45,
                            ),
                            SizedBox(
                              width: 100,
                              height: 30,
                              child: GeneralTextFormFieldWidget(
                                  validation: resultsControl.validateAlaine,
                                  text: TextWidget(text: ''),
                                  controller: resultsControl.t6Control,
                                  hint: '4-36'),
                            ),
                            TextWidget(text: 'U/L')
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextWidget(text: 'Aspartate-aminotransferase'),
                            const SizedBox(
                              width: 37,
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
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextWidget(text: 'Total_proteins'),
                            const SizedBox(
                              width: 137,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextWidget(text: 'Albumin'),
                            const SizedBox(
                              width: 170,
                            ),
                            SizedBox(
                              width: 100,
                              height: 30,
                              child: GeneralTextFormFieldWidget(
                                  validation: resultsControl.validateAlbumin,
                                  text: TextWidget(text: ''),
                                  controller: resultsControl.t9Control,
                                  hint: '3.4-5.4'),
                            ),
                            TextWidget(text: 'g/dL')
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextWidget(text: 'Albumin_to_globulin_ratio'),
                            const SizedBox(
                              width: 37,
                            ),
                            SizedBox(
                              width: 100,
                              height: 30,
                              child: GeneralTextFormFieldWidget(
                                  validation: resultsControl.validateAGRatio,
                                  text: TextWidget(text: ''),
                                  controller: resultsControl.t10Control,
                                  hint: '00'),
                            ),
                            TextWidget(text: 'units')
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
                                      Navigator.of(context).pop();
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
