import 'package:flutter/material.dart';
import 'package:onboarding_flutter/constants/colors.dart';
import 'package:onboarding_flutter/entities/onboarding_entity.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.onboardingBgColor,
      body: SafeArea(
        child: Center(
          child: Container(
            width: 328,
            height: 696,
            padding: EdgeInsets.all(16),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Color(0xFFFEFEFF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    padding:
                        const EdgeInsets.only(top: 24, left: 16, right: 16, bottom: 16),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: AppColor.onboardingInnerColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: PageView.builder(
                      controller: _pageController,
                        itemCount: onboardingData.length,
                        onPageChanged: (int page){
                          setState(() {
                            _currentPage = page;
                          });
                        },
                        itemBuilder: (context, index){
                          final item = onboardingData[index];
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.title,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.titleTextColor,
                                ),
                              ),
                              SizedBox(height: 16),
                              Text(
                                item.subTitle,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColor.subTitleTextColor,
                                ),
                              ),

                                SizedBox(height: 70),

                                Center(
                                  child: Image.asset(
                                      item.imagePath,
                                  ),
                                ),
                          ],
                        );
                        },
                    ),
                  ),
                ),

                SizedBox(height: 24,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(onboardingData.length, (index) => buildDot(index)),
                ),

                SizedBox(height: 24,),

                FilledButton(
                  onPressed: () {},
                  child: Text('Get Started'),
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColor.primaryBtnColor,
                    fixedSize: Size(296, 48)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDot(int index) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      width: 24,
      height: 4,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: _currentPage == index ? AppColor.activeIndicatorColor : AppColor.inactiveIndicatorColor,
      ),
    );
  }
}
