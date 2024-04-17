import 'package:diagnosis_accuracy/views/login_view.dart';
import 'package:diagnosis_accuracy/views/new_acc.dart';
import 'package:diagnosis_accuracy/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class MyLandingPage extends StatelessWidget {
  const MyLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(45, 15, 45, 0),
        child: Center(
          child: ListView(
            children: [
              Lottie.asset("assets/my_animations/1.json",
                  width: 200, height: 500),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(() => const LoginPage());
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.lightGreen),
                      child: Center(
                          child: TextWidget(
                        text: 'LOGIN',
                        isHeading: true,
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                      child: TextWidget(
                    text: "OR",
                    isHeading: true,
                  )),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const NewAccount());
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black),
                      child: Center(
                        child: TextWidget(
                          text: 'SIGN UP',
                          colors: Colors.white,
                          isHeading: true,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
