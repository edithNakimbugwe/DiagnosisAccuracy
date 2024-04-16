import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnboardingController extends GetxController {
  final liquidController = LiquidController();
  final pageController = PageController();
  var currentPage = 0.obs;

  void nextPage() {
    currentPage.value++;
  }

  void onPageChangedCallBack(int activePageIndex) {
    currentPage.value = activePageIndex;
  }
}
