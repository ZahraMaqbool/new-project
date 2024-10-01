import 'package:flutter/material.dart';

import '../../on_boarding_screens/introductory_pages/introductory_third_page.dart';
import '../colors.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.containerHeight,
      required this.containerWidth,
      required this.onTap,
      required this.child
      });

  double containerHeight;
  double containerWidth;
  final GestureTapCallback? onTap;
  
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: containerHeight,
        width: containerWidth,
        margin: EdgeInsets.only(top: containerHeight * (buttonMarginTop / 50)),
        decoration: BoxDecoration(
          color: AppColor.buttonBackGround,
          borderRadius: BorderRadius.circular(
              containerHeight * (buttonBorderRadius / 50)),
          boxShadow: const [
            BoxShadow(
              color: AppColor.buttonShadowsColor,
              blurRadius: buttonShadowBlurRadius,
              spreadRadius: buttonShadowSpreadRadius,
              offset: Offset(buttonShadowOffsetX, buttonShadowOffsetY),
            ),
          ],
        ),
        child: child
      ),
    );
  }
}
