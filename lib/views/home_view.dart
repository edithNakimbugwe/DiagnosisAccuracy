import 'package:diagnosis_accuracy/controllers/patient_data_controllers.dart';
import 'package:diagnosis_accuracy/views/my_drawer%20_views/contact_us_page.dart';
import 'package:diagnosis_accuracy/views/my_drawer%20_views/settings.dart';
import 'package:diagnosis_accuracy/widgets/text_form_field.dart';
import 'package:diagnosis_accuracy/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'lab_results_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final patientDataController = Get.put(PatientDataController());
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
                      key: patientDataController.patientDataFormKey,
                      child: Column(children: [
                        GeneralTextFormFieldWidget(
                            validation:
                                patientDataController.validatePatientName,
                            text: TextWidget(text: 'Patient Name'),
                            controller: patientDataController.patientName,
                            hint: 'Enter Patient\'s name here'),
                        GeneralTextFormFieldWidget(
                            validation: patientDataController.validatePatientID,
                            text: TextWidget(text: 'Patient ID'),
                            controller: patientDataController.patientID,
                            hint: 'U0000'),
                        GeneralTextFormFieldWidget(
                            validation:
                                patientDataController.validatePatientName,
                            text: TextWidget(text: 'Patient Name'),
                            controller: patientDataController.patientName,
                            hint: 'Enter Patient\'s name here'),
                        GeneralTextFormFieldWidget(
                            validation:
                                patientDataController.validatePatientTel,
                            text: TextWidget(text: 'Patient Phone number'),
                            controller: patientDataController.patientTel,
                            hint: '0756050438'),
                        GeneralTextFormFieldWidget(
                            validation:
                                patientDataController.validatePatientAddress,
                            text: TextWidget(text: 'Patient Address'),
                            controller: patientDataController.patientAddress,
                            hint: 'Enter Patient\'s residential address'),
                        GeneralTextFormFieldWidget(
                            validation:
                                patientDataController.validateCurrentMedication,
                            text: TextWidget(text: 'Current Medication'),
                            controller: patientDataController.currentMedication,
                            hint: 'eg blood pressure medication'),
                        GeneralTextFormFieldWidget(
                            validation:
                                patientDataController.validatePatientAllergies,
                            text: TextWidget(text: 'Allergies'),
                            controller: patientDataController.patientAllergies,
                            hint: 'eg food allergies')
                      ])),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => const ResultsPage());
                  },
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.lightGreen),
                    child: Center(
                      child: TextWidget(
                        text: 'Click me',
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
                Get.to(() => const HomePage());
              },
              icon: const Icon(Icons.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
              label: 'More')
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
                Navigator.pop(context);
                Get.to(() => const SettingsPage());
              }),
              myDrawerItems(Icons.contact_page_rounded, 'Contact Us', () {
                Navigator.pop(context);
                Get.to(() => const ContactUspage());
              }),
              myDrawerItems(Icons.info, 'About Us', () {
                Navigator.pop(context);
                Get.to(() => const ResultsPage());
              }),
              myDrawerItems(Icons.warning_amber, 'Disclaimer', () {
                Navigator.pop(context);
                Get.to(() => const ResultsPage());
              }),
              myDrawerItems(Icons.notes, 'Terms And Conditions', () {
                Navigator.pop(context);
                Get.to(() => const ResultsPage());
              }),
              myDrawerItems(Icons.privacy_tip, 'Privacy Policy', () {
                Navigator.pop(context);
                Get.to(() => const ResultsPage());
              }),
              myDrawerItems(Icons.logout, 'Log Out', () {
                Navigator.pop(context);
                Get.to(() => const ResultsPage());
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
}
