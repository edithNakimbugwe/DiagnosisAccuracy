import 'package:diagnosis_accuracy/views/login_view.dart';
import 'package:diagnosis_accuracy/views/new_acc.dart';
import 'package:diagnosis_accuracy/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyLandingPage extends StatelessWidget {
  const MyLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Center(
          child: ListView(
            children: [
              const Image(image: AssetImage('assets/images/2.jpg')),
              const SizedBox(
                height: 400,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const LoginPage());
                },
                child: Container(
                  height: 70,
                  width: 30000,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green),
                  child: Center(
                      child: TextWidget(
                    text: 'LOGIN',
                    isHeading: true,
                  )),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Get.to(const NewAccount());
                },
                child: Container(
                  height: 70,
                  width: 30000,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
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
          ),
        ),
      ),
    );
  }
}
