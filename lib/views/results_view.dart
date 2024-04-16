import 'package:diagnosis_accuracy/controllers/my_controllers.dart';
import 'package:diagnosis_accuracy/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/text_widget.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final control = Get.put(MyControllers());
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                  child: Row(
                children: [
                  TextWidget(text: 'Age'),
                  const SizedBox(
                    width: 110,
                  ),
                  SizedBox(
                    width: 100,
                    height: 30,
                    child: TextFormFieldWidget(
                        validation: control.validateEmail,
                        text: TextWidget(text: ''),
                        control2: control.eControl,
                        hint: '20'),
                  ),
                  TextWidget(text: 'Years')
                ],
              )),
              Row(
                children: [
                  TextWidget(text: 'Gender'),
                  const SizedBox(
                    width: 100,
                  ),
                  SizedBox(
                    width: 100,
                    height: 30,
                    child: TextFormFieldWidget(
                        validation: control.validateEmail,
                        text: TextWidget(text: ''),
                        control2: control.eControl,
                        hint: 'M/F'),
                  ),
                ],
              ),
              Row(
                children: [
                  TextWidget(text: 'Total_bilirubin'),
                  const SizedBox(
                    width: 75,
                  ),
                  SizedBox(
                    width: 100,
                    height: 30,
                    child: TextFormFieldWidget(
                        validation: control.validateEmail,
                        text: TextWidget(text: ''),
                        control2: control.eControl,
                        hint: '1.2'),
                  ),
                  TextWidget(text: 'mg/dL')
                ],
              ),
              Row(
                children: [
                  TextWidget(text: 'Direct_bilirubin'),
                  const SizedBox(
                    width: 80,
                  ),
                  SizedBox(
                    width: 100,
                    height: 30,
                    child: TextFormFieldWidget(
                        validation: control.validateEmail,
                        text: TextWidget(text: ''),
                        control2: control.eControl,
                        hint: '0.3'),
                  ),
                  TextWidget(text: 'mg/dL')
                ],
              ),
              Row(
                children: [
                  TextWidget(text: 'Alkaline-phosphate'),
                  const SizedBox(
                    width: 65,
                  ),
                  SizedBox(
                    width: 100,
                    height: 30,
                    child: TextFormFieldWidget(
                        validation: control.validateEmail,
                        text: TextWidget(text: ''),
                        control2: control.eControl,
                        hint: '44-147'),
                  ),
                  TextWidget(text: 'IU/L')
                ],
              ),
              Row(
                children: [
                  TextWidget(text: 'Alamine_aminotransferase'),
                  const SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    width: 100,
                    height: 30,
                    child: TextFormFieldWidget(
                        validation: control.validateEmail,
                        text: TextWidget(text: ''),
                        control2: control.eControl,
                        hint: '4-36'),
                  ),
                  TextWidget(text: 'U/L')
                ],
              ),
              Row(
                children: [
                  TextWidget(text: 'Aspartate-aminotransferase'),
                  const SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    width: 100,
                    height: 30,
                    child: TextFormFieldWidget(
                        validation: control.validateEmail,
                        text: TextWidget(text: ''),
                        control2: control.eControl,
                        hint: '8-33'),
                  ),
                  TextWidget(text: 'U/L')
                ],
              ),
              Row(
                children: [
                  TextWidget(text: 'Total_proteins'),
                  const SizedBox(
                    width: 100,
                  ),
                  SizedBox(
                    width: 100,
                    height: 30,
                    child: TextFormFieldWidget(
                        validation: control.validateEmail,
                        text: TextWidget(text: ''),
                        control2: control.eControl,
                        hint: ''),
                  ),
                  TextWidget(text: 'U/L')
                ],
              ),
              Row(
                children: [
                  TextWidget(text: 'Albumin'),
                  const SizedBox(
                    width: 123,
                  ),
                  SizedBox(
                    width: 100,
                    height: 30,
                    child: TextFormFieldWidget(
                        validation: control.validateEmail,
                        text: TextWidget(text: ''),
                        control2: control.eControl,
                        hint: '3.4-5.4'),
                  ),
                  TextWidget(text: 'g/dL')
                ],
              ),
              Row(
                children: [
                  TextWidget(text: 'Albumin_to_globulin_ratio'),
                  const SizedBox(
                    width: 40,
                  ),
                  SizedBox(
                    width: 100,
                    height: 30,
                    child: TextFormFieldWidget(
                        validation: control.validateEmail,
                        text: TextWidget(text: ''),
                        control2: control.eControl,
                        hint: '00'),
                  ),
                  TextWidget(text: 'units')
                ],
              ),
              Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightGreen),
                      onPressed: () {},
                      child: TextWidget(text: 'SUBMIT')))
            ],
          ),
        ),
      ),
    );
  }
}
