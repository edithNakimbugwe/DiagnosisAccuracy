import 'package:diagnosis_accuracy/views/contact_us_page.dart';
import 'package:diagnosis_accuracy/views/settings.dart';
import 'package:diagnosis_accuracy/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'results/results_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          elevation: 1,
          title: Center(
            child: TextWidget(
              text: 'HepaCheck',
              isHeading: true,
            ),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(text: 'Welcome to your diagnosis asistant!'),
            const SizedBox(height: 20),
            TextWidget(text: 'Please tap the button below to log findings.'),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Get.to(() => const ResultsPage());
              },
              child: Container(
                color: Colors.lightGreen,
                height: 40,
                width: 150,
                child: Center(
                  child: TextWidget(
                    text: 'Click me',
                    isHeading: true,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
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
