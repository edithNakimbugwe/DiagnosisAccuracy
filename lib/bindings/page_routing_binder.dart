import 'package:diagnosis_accuracy/views/home_view.dart';
import 'package:diagnosis_accuracy/views/new_acc.dart';
import 'package:diagnosis_accuracy/views/onboarding/onboarding_view.dart';
import 'package:get/get.dart';

import '../views/login_view.dart';
import 'home_binding.dart';
import 'login_binding.dart';
import 'signup_binding.dart';

List<GetPage> getpages = [
  GetPage(
    name: '/',
    page: () => const OnBoardingView(),
  ),
  GetPage(
    name: '/home',
    page: () => HomePage(),
    binding: HomeBinding(),
  ),
  GetPage(
    name: '/login',
    page: () => const LoginPage(),
    binding: LoginBinding(),
  ),
  GetPage(
    name: '/signup',
    page: () => const NewAccount(),
    binding: SignUpBinding(),
  ),
];
