class OnBoardingItems {
  final String title;
  final String imageUrl;
  final String text;

  OnBoardingItems(
      {required this.title, required this.imageUrl, required this.text});
}

List<OnBoardingItems> pages = [
  OnBoardingItems(
      title: "The Liver",
      imageUrl: 'assets/images/1.jpg',
      text:
          "Welcome to our diagnostic aid app designed to assist doctors in diagnosing liver conditions."),
  OnBoardingItems(
      title: "Second",
      imageUrl: 'assets/images/2.jpg',
      text: "Is it genuine though?we are yet to findout"),
  OnBoardingItems(
      title: "Third",
      imageUrl: 'assets/images/3.jpg',
      text: "We all hope for the best in whatever we do"),
];
