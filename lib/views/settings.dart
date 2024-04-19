import 'package:diagnosis_accuracy/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: TextWidget(
          text: 'Settings',
          isHeading: true,
        )),
        backgroundColor: Colors.lightGreen,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(45, 60, 45, 0),
        child: Center(
          child: Column(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.lightGreen),
                  child: Center(
                      child: TextWidget(
                    text: 'Reset Password',
                    colors: Colors.white,
                  )),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.lightGreen),
                  child: Center(
                    child: TextWidget(
                      text: 'Delete Account',
                      colors: Colors.white,
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
