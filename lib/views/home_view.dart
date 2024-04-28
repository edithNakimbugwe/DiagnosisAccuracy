import 'package:diagnosis_accuracy/controllers/logout_controllers.dart';
import 'package:diagnosis_accuracy/controllers/patient_data_controllers.dart';
import 'package:diagnosis_accuracy/services/firebase_services.dart';
import 'package:diagnosis_accuracy/views/lab_results_view.dart';
import 'package:diagnosis_accuracy/views/my_drawer%20_views/contact_us_page.dart';
import 'package:diagnosis_accuracy/views/my_drawer%20_views/settings.dart';
import 'package:diagnosis_accuracy/views/saved_reports.dart';
import 'package:diagnosis_accuracy/widgets/text_form_field.dart';
import 'package:diagnosis_accuracy/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'predicton_trial.dart';

Future<String> loadAboutUsTextFile() async {
  return await rootBundle.loadString('assets/docs/about_us.html');
}

Future<String> loadDisclaimerTextFile() async {
  return await rootBundle.loadString('assets/docs/disclaimer2.html');
}

Future<String> loadTermsAndConditionsTextFile() async {
  return await rootBundle.loadString('assets/docs/terms_and_conditions.html');
}

Future<String> loadPrivacyPolicyTextFile() async {
  return await rootBundle.loadString('assets/docs/privacypolicy.html');
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final logoutController = Get.put(LogOutController());

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PatientDataController());

    return Scaffold(
      appBar: AppBar(
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Image.asset(
                'assets/images/3.jpg',
                height: 40,
                width: 40,
              ),
              const SizedBox(
                width: 15,
              ),
              TextWidget(
                text: 'HepaCheck',
                isHeading: true,
              ),
            ],
          )),
      body: Builder(builder: (BuildContext context) {
        return Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Welcome!',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 40,
                    color: Colors.lightGreen,
                  ),
                ),
                const SizedBox(height: 30),
                TextWidget(
                    text: 'Please enter patient\'s biodata in the form below '),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(45, 15, 45, 0),
                  child: Form(
                      key: controller.patientDataFormKey,
                      child: Column(children: [
                        GeneralTextFormFieldWidget(
                            validation: controller.validatePatientName,
                            text: TextWidget(text: 'Patient Name'),
                            controller: controller.patientName,
                            hint: 'Enter Patient\'s name here'),
                        GeneralTextFormFieldWidget(
                            validation: controller.validatePatientID,
                            text: TextWidget(text: 'Patient ID'),
                            controller: controller.patientID,
                            hint: 'U0000'),
                        GeneralTextFormFieldWidget(
                            validation: controller.validatePatientTel,
                            text: TextWidget(text: 'Patient Phone number'),
                            controller: controller.patientTel,
                            hint: '0756050438'),
                        GeneralTextFormFieldWidget(
                            validation: controller.validatePatientAddress,
                            text: TextWidget(text: 'Patient Address'),
                            controller: controller.patientAddress,
                            hint: 'Enter Patient\'s residential address'),
                        GeneralTextFormFieldWidget(
                            validation: controller.validateCurrentMedication,
                            text: TextWidget(text: 'Current Medication'),
                            controller: controller.currentMedication,
                            hint: 'eg blood pressure medication'),
                        GeneralTextFormFieldWidget(
                            validation: controller.validatePatientAllergies,
                            text: TextWidget(text: 'Allergies'),
                            controller: controller.patientAllergies,
                            hint: 'eg food allergies')
                      ])),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    if (controller.patientDataFormKey.currentState!
                        .validate()) {
                      AuthController.instance.addPatientData(
                          patientName: controller.patientName.text.trim(),
                          patientID: controller.patientID.text.trim(),
                          phoneNumber: controller.patientTel.text.trim(),
                          address: controller.patientAddress.text.trim(),
                          currentMedication:
                              controller.currentMedication.text.trim(),
                          allergies: controller.patientAllergies.text.trim());
                      Get.to(() => const ResultsPage());
                    }
                  },
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.lightGreen),
                    child: Center(
                      child: TextWidget(
                        text: 'Next',
                        isHeading: true,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        );
      }),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Get.to(() => HomePage());
              },
              icon: const Icon(Icons.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Get.to(() => const SavedReportspage());
                },
                icon: const Icon(Icons.document_scanner),
              ),
              label: 'Reports')
        ],
        backgroundColor: Colors.lightGreen,
      ),
      drawer: Drawer(
        child: SizedBox(
          height: 20,
          width: 60,
          child: Column(
            children: [
              myDrawerHeader(),
              myDrawerItemsList(context),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.amber[50],
    );
  }

  myDrawerHeader() => Container(
        height: 200,
        width: double.infinity,
        color: Colors.green,
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              height: 80,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/5.jpg'))),
            ),
            TextWidget(text: 'Username'),
            TextWidget(text: 'EmailAddress')
          ],
        ),
      );

  myDrawerItemsList(context) => SizedBox(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(
            children: [
              myDrawerItems(Icons.settings, 'Settings', () {
                Get.to(() => const SettingsPage());
              }),
              myDrawerItems(Icons.contact_page_rounded, 'Contact Us', () {
                Get.to(() => const ContactUspage());
              }),
              myDrawerItems(Icons.info, 'About Us', () {
                _onPressedAboutUs(context);
              }),
              myDrawerItems(Icons.warning_amber, 'Disclaimer', () {
                _onPressedDisclaimer(context);
              }),
              myDrawerItems(Icons.notes, 'Terms And Conditions', () {
                _onPressedTermsAndConditions(context);
              }),
              myDrawerItems(Icons.privacy_tip, 'Privacy Policy', () {
                _onPressedPrivacyPolicy(context);
              }),
              myDrawerItems(Icons.logout, 'Log Out', () {
                logoutController.logout();
                Navigator.pop(context);
              }),
            ],
          ),
        ),
      );

  myDrawerItems(IconData icon, String text, VoidCallback onTap) => Material(
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: Icon(
                    icon,
                    size: 20,
                    color: Colors.green,
                  ),
                ),
                Expanded(flex: 3, child: TextWidget(text: text)),
              ],
            ),
          ),
        ),
      );
  void _onPressedAboutUs(BuildContext context) async {
    String fileContent = await loadAboutUsTextFile();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: TextWidget(
            text: 'About Us',
            isHeading: true,
          ),
          content: SingleChildScrollView(child: TextWidget(text: fileContent)),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void _onPressedDisclaimer(BuildContext context) async {
    String fileContent = await loadDisclaimerTextFile();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: TextWidget(
            text: 'Disclaimer',
            isHeading: true,
          ),
          content: SingleChildScrollView(child: TextWidget(text: fileContent)),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void _onPressedTermsAndConditions(BuildContext context) async {
    String fileContent = await loadTermsAndConditionsTextFile();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: TextWidget(
            text: 'Terms and conditions',
            isHeading: true,
          ),
          content: SingleChildScrollView(child: TextWidget(text: fileContent)),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void _onPressedPrivacyPolicy(BuildContext context) async {
    String fileContent = await loadPrivacyPolicyTextFile();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: TextWidget(
            text: 'Privacy Policy',
            isHeading: true,
          ),
          content: SingleChildScrollView(child: TextWidget(text: fileContent)),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
