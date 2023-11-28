class OnboardingEntity {
  OnboardingEntity({
    required this.title,
    required this.subTitle,
    required this.imagePath,
  });

  String title;
  String subTitle;
  String imagePath;
}

List<OnboardingEntity> onboardingData = [
  OnboardingEntity(
    title: 'The Sermon Bible...',
    subTitle: 'Your All-in-One companion Bible App for referencing, note-taking, insights sharing and discovery.',
    imagePath: 'images/onboarding_one.png',
  ),

  OnboardingEntity(
    title: 'Bible study Made Easy.',
    subTitle: 'Say Bye! to switching between your favourite Bible and Note apps. Now you have them together!',
    imagePath: 'images/onboarding_two.png',
  ),

  OnboardingEntity(
    title: 'Robust Note-taking Feature.',
    subTitle: 'Document your thoughts, insights and revelations, and keep record of your sermon notes in one place.',
    imagePath: 'images/onboarding_three.png',
  ),
];
