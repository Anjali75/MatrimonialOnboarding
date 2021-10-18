import 'package:onboarding/onboarding.dart';

class OnboardingContext {
  String image;
  String image1;
  String title;
  String discription;

  OnboardingContext(
      {required this.image,
      required this.title,
      required this.discription,
      required this.image1});
}

List<OnboardingContext> contents = [
  OnboardingContext(
    title: "Find",
    image: 'assets/images/Vector.png',
    image1: 'assets/images/Group 208.png',
    discription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
  ),
  OnboardingContext(
    title: "Match",
    image: 'assets/images/heart.png',
    image1: 'assets/images/Group 208.png',
    discription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
  ),
  OnboardingContext(
    title: "Meet",
    image: 'assets/images/Group 93.png',
    image1: 'assets/images/Group 208.png',
    discription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
  )
];
