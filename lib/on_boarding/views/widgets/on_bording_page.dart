import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:practice_practice/core/common/widgets/item_scale_animation.dart';
import 'package:practice_practice/features/choose_role/widget/choose_role_page.dart';
import 'package:practice_practice/on_boarding/controller/on_boarding_behavior.dart';
import 'package:practice_practice/on_boarding/views/widgets/on_boarding_widgets.dart';

class OnBordingPage extends HookWidget with OnBoardingBehavior {
  OnBordingPage({super.key});
  static const routName = '/onboarding_Page';

  @override
  Widget build(BuildContext context) {
    PageController pageController = usePageController();
    return Scaffold(
      body: PageView.builder(
        itemCount: onBoardingModel.length,
        controller: pageController,
        itemBuilder: (context, index) {
          return ItemScaleAnimation(
            child: OnBoardingWidget(
                imagePath: onBoardingModel[index].image,
                controller: pageController,
                heading: onBoardingModel[index].title,
                nextBtnTab: () {
                  onTab(context, index, pageController);
                },
                skipBtnTab: () {
                  onTab(context, index, pageController);
                },
                subHeading: onBoardingModel[index].subTitle),
          );
        },
      ),
    );
  }

  void onTab(BuildContext context, int index, PageController pageController) {
    if (index == 2) {
      Navigator.pushNamed(context, ChooseRolePage.routeName);
    } else {
      pageController.animateToPage(index + 1,
          duration: const Duration(milliseconds: 300), curve: Curves.linear);
    }
  }
}
