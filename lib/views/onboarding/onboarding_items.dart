import 'package:diagnosis_accuracy/widgets/text_widget.dart';

class OnBoardingItems {
  final TextWidget title;
  final String? lottieUrl;
  final String text;

  OnBoardingItems(
      {required this.title, required this.lottieUrl, required this.text});
}

List<OnBoardingItems> pages = [
  OnBoardingItems(
      title: TextWidget(
        text: "Empower Accuracy",
        isHeading: true,
      ),
      lottieUrl: 'assets/my_animations/liver1.json',
      text:
          "Join us in revolutionising liver disease diagnosis.Your contribution can save lives and redefine medical standards"),
  OnBoardingItems(
      title: TextWidget(text: "Precision matters", isHeading: true),
      lottieUrl: 'assets/my_animations/liver1.json',
      text:
          "Help us shape the future of liver disease diagnosis with your expertise"),
  OnBoardingItems(
      title: TextWidget(
        text: "Join the quest for precission",
        isHeading: true,
      ),
      lottieUrl: 'assets/my_animations/lifesupport.json',
      text:
          "Together, we can enhance diagnostic accuracy and transform patient outcomes"),
];
