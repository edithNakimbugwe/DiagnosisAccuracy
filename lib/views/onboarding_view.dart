import 'package:diagnosis_accuracy/views/onboarding_items.dart';
import 'package:diagnosis_accuracy/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';

import 'landing_view.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(330, 30, 0, 0),
            child: Row(
              children: [
                const SizedBox(
                  width: 0,
                ),
                TextButton(
                    onPressed: () {
                      Get.to(() => const MyLandingPage());
                    },
                    child: TextWidget(
                      text: 'Skip',
                      colors: Colors.green,
                    )),
              ],
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: pages.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(60, 10, 60, 10),
                  child: Column(
                    children: [
                      Lottie.asset(
                        pages[index].lottieUrl!,
                        width: 200,
                        height: 400,
                      ),
                      const SizedBox(height: 30),
                      pages[index].title,
                      const SizedBox(height: 10),
                      Text(
                        pages[index].text,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              pages.length,
              (index) => buildDot(index, context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(65, 10, 65, 10),
            child: GestureDetector(
              onTap: () {
                if (currentIndex == pages.length - 1) {
                  Get.to(() => const MyLandingPage());
                }
                _controller.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.bounceIn);
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    currentIndex == pages.length - 1 ? "Get Started" : "Next",
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: currentIndex == index ? Colors.green : Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
