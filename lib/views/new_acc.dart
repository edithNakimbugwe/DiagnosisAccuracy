import 'package:diagnosis_accuracy/controllers/signup_controllers.dart';
import 'package:diagnosis_accuracy/widgets/custom_password_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/text_form_field.dart';
import '../widgets/text_widget.dart';
import 'home_view.dart';

class NewAccount extends StatelessWidget {
  const NewAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final control = Get.put(SignUpControllers());
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
                  key: control.signupformKey,
                  child: Center(
                    child: Column(
                      children: [
                        GeneralTextFormFieldWidget(
                            validation: control.validateName,
                            text: TextWidget(text: 'First Name'),
                            controller: control.n1Control,
                            hint: 'eg. EDITH'),
                        GeneralTextFormFieldWidget(
                            validation: control.validateName,
                            text: TextWidget(text: 'Last Name'),
                            controller: control.n2Control,
                            hint: 'eg. AWINO'),
                        GeneralTextFormFieldWidget(
                            validation: control.validateEmail,
                            text: TextWidget(text: 'Email Address'),
                            controller: control.e1Control,
                            hint: 'youremailaddress@any.com'),
                        Obx(
                          () => CustomPasswordFormField(
                            controller: control.p1Control,
                            hintText: "*********",
                            userFunction: () => control.toggleVisibility(),
                            isVisible: control.isVisible.value,
                            text: TextWidget(text: "Password"),
                            validate: control.validatePassword,
                          ),
                        ),
                        Obx(
                          () => CustomPasswordFormField(
                            controller: control.p2Control,
                            hintText: "*********",
                            userFunction: () => control.toggleVisibility(),
                            isVisible: control.isVisible.value,
                            text: TextWidget(text: "Comfirm Password"),
                            validate: control.validatePassword,
                          ),
                        ),
                        GeneralTextFormFieldWidget(
                            validation: control.validateCountry,
                            text: TextWidget(text: 'Country'),
                            controller: control.cControl,
                            hint: 'eg. Uganda'),
                        GeneralTextFormFieldWidget(
                            validation: control.validateOccupation,
                            text: TextWidget(text: 'Occupation'),
                            controller: control.oControl,
                            hint: 'eg. Physician'),
                        GeneralTextFormFieldWidget(
                            validation: control.validateSpecialty,
                            text: TextWidget(text: 'Specialty'),
                            controller: control.sControl,
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
                  if (control.signupformKey.currentState!.validate()) {
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
