import 'package:diagnosis_accuracy/my_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/text_form_field.dart';
import '../widgets/text_widget.dart';
import 'home_view.dart';

class NewAccount extends StatelessWidget {
  const NewAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final control = Get.put(MyControllers());
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          elevation: 3,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {},
            color: Colors.black,
          ),
          title: Center(
            child: TextWidget(
              text: 'Sign Up',
              isHeading: true,
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Form(
                  key: control.formKey2,
                  child: Center(
                    child: Column(
                      children: [
                        TextFormFieldWidget(
                            validation: control.validateName,
                            text: TextWidget(text: 'First Name'),
                            control2: control.n1Control,
                            hint: 'eg. EDITH'),
                        TextFormFieldWidget(
                            validation: control.validateName,
                            text: TextWidget(text: 'Last Name'),
                            control2: control.n2Control,
                            hint: 'eg. AWINO'),
                        TextFormFieldWidget(
                            validation: control.validateEmail,
                            text: TextWidget(text: 'Email Address'),
                            control2: control.eControl,
                            hint: 'youremailaddress@any.com'),
                        TextFormFieldWidget(
                          validation: control.validatePassword,
                          text: TextWidget(text: 'Password'),
                          control2: control.p1Control,
                          hint: '************',
                          isPassword: true,
                        ),
                        TextFormFieldWidget(
                          validation: control.validatePassword,
                          text: TextWidget(text: 'Confirm Password'),
                          control2: control.p2Control,
                          hint: '************',
                          isPassword: true,
                        ),
                        TextFormFieldWidget(
                            validation: control.validateCountry,
                            text: TextWidget(text: 'Country'),
                            control2: control.cControl,
                            hint: 'eg. Uganda'),
                        TextFormFieldWidget(
                            validation: control.validateOccupation,
                            text: TextWidget(text: 'Occupation'),
                            control2: control.oControl,
                            hint: 'eg. Physician'),
                        TextFormFieldWidget(
                            validation: control.validateSpecialty,
                            text: TextWidget(text: 'Specialty'),
                            control2: control.sControl,
                            hint: ' eg. Hepatologist'),
                      ],
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextWidget(text: 'Email Updates'),
                  const SizedBox(
                    width: 100,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.toggle_on),
                    color: Colors.lightGreen,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextWidget(text: 'Agree to the terms and conditions'),
                  const SizedBox(
                    width: 25,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.toggle_off),
                    color: Colors.lightGreen,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              TextWidget(
                  text:
                      'By tapping Sign Up,you agree to the terms of use and privacy policy.'),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  if (control.formKey2.currentState!.validate()) {
                    Get.snackbar('', 'Account Created Successfully!',
                        snackPosition: SnackPosition.TOP,
                        backgroundColor: Colors.green,
                        colorText: Colors.white,
                        duration: const Duration(seconds: 3),
                        isDismissible: true,
                        dismissDirection: DismissDirection.up);

                    Get.to(() => const HomePage());
                  }
                },
                child: Container(
                  color: Colors.lightGreen,
                  height: 50,
                  width: 200,
                  child: Center(
                    child: TextWidget(
                      text: 'Sign Up',
                      isHeading: true,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
