import 'package:diagnosis_accuracy/controllers/signup_controllers.dart';
import 'package:diagnosis_accuracy/views/landing_view.dart';
import 'package:diagnosis_accuracy/widgets/custom_password_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/checkbox_widget.dart';
import '../widgets/text_form_field.dart';
import '../widgets/text_widget.dart';

class NewAccount extends StatelessWidget {
  const NewAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final signupController = Get.put(SignUpControllers());
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Get.to(() => const MyLandingPage());
            },
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
                  key: signupController.signupformKey,
                  child: Center(
                    child: Column(
                      children: [
                        GeneralTextFormFieldWidget(
                            validation: signupController.validateName,
                            text: TextWidget(text: 'First Name'),
                            controller: signupController.n1Control,
                            hint: 'eg. EDITH'),
                        GeneralTextFormFieldWidget(
                            validation: signupController.validateName,
                            text: TextWidget(text: 'Last Name'),
                            controller: signupController.n2Control,
                            hint: 'eg. AWINO'),
                        GeneralTextFormFieldWidget(
                            validation: signupController.validateEmail,
                            text: TextWidget(text: 'Email Address'),
                            controller: signupController.e1Control,
                            hint: 'youremailaddress@any.com'),
                        Obx(
                          () => CustomPasswordFormField(
                            controller: signupController.p1Control,
                            hintText: "*********",
                            userFunction: () =>
                                signupController.toggleVisibility(),
                            isVisible: signupController.isVisible.value,
                            text: TextWidget(text: "Password"),
                            validate: signupController.validatePassword,
                          ),
                        ),
                        Obx(
                          () => CustomPasswordFormField(
                            controller: signupController.p2Control,
                            hintText: "*********",
                            userFunction: () =>
                                signupController.toggleVisibility2(),
                            isVisible: signupController.isSeen.value,
                            text: TextWidget(text: "Comfirm Password"),
                            validate: signupController.validatePassword,
                          ),
                        ),
                        GeneralTextFormFieldWidget(
                            validation: signupController.validateCountry,
                            text: TextWidget(text: 'Country'),
                            controller: signupController.cControl,
                            hint: 'eg. Uganda'),
                        GeneralTextFormFieldWidget(
                            validation: signupController.validateOccupation,
                            text: TextWidget(text: 'Occupation'),
                            controller: signupController.oControl,
                            hint: 'eg. Physician'),
                        GeneralTextFormFieldWidget(
                            validation: signupController.validateSpecialty,
                            text: TextWidget(text: 'Specialty'),
                            controller: signupController.sControl,
                            hint: ' eg. Hepatologist'),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(text: 'Agree to the terms and conditions'),
                  const SizedBox(
                    width: 40,
                  ),
                  CheckBoxWidget()
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextWidget(
                  text:
                      'By tapping Sign Up,you agree to the terms of use and privacy policy.'),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  if (signupController.signupformKey.currentState!.validate()) {
                    signupController.registerUser();
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
      backgroundColor: Colors.amber[50],
    );
  }
}
