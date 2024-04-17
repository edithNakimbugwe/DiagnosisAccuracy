import 'package:diagnosis_accuracy/controllers/my_controllers.dart';
import 'package:diagnosis_accuracy/views/home_view.dart';
import 'package:diagnosis_accuracy/views/new_acc.dart';
import 'package:diagnosis_accuracy/widgets/custom_password_field_widget.dart';
import 'package:diagnosis_accuracy/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/text_form_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final control = Get.put(MyControllers());
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
              Row(
                children: [
                  const Image(
                    image: AssetImage('assets/images/3.jpg'),
                    height: 50,
                    width: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TextWidget(
                    text: 'SIGN IN',
                    isHeading: true,
                  )
                ],
              ),
              Form(
                key: control.formKey1,
                child: Center(
                  child: Column(
                    children: [
                      GeneralTextFormFieldWidget(
                          validation: control.validateEmail,
                          text: TextWidget(text: 'Email Address'),
                          controller: control.eControl,
                          hint: 'youremailaddress@any.com'),
                      Obx(
                        () => CustomPasswordFormField(
                          controller: control.pControl,
                          hintText: "***********",
                          userFunction: () => control.toggleVisibility(),
                          isVisible: control.isVisible.value,
                          text: TextWidget(text: "Password"),
                          validate: control.validatePassword,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            'Forgot Password?',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          if (control.formKey1.currentState!.validate()) {
                            Get.snackbar('', 'Logged in successfully',
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
                          color: Colors.black,
                          height: 40,
                          width: 30000,
                          child: Center(
                            child: TextWidget(
                              text: 'SIGN IN',
                              colors: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextWidget(text: 'Not Registered?'),
                          InkWell(
                            child: TextWidget(
                              text: 'Sign Up',
                              colors: Colors.green.shade700,
                            ),
                            onTap: () {
                              Get.to(const NewAccount());
                            },
                          )
                        ],
                      )
                    ],
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
