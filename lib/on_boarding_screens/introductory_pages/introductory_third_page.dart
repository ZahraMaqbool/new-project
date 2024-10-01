import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:practice_practice/core/colors.dart';

import '../../core/widgets/custom_button.dart';

// Constants
const double topMarginLottie = 40;
const double topMarginText1 = 30;
const double topMarginText2 = 10;
const double animatedTextFontSize1 = 53;
const double animatedTextFontSize2 = 17;
const double buttonHeight = 50;
const double buttonWidth = 200;
const double buttonMarginTop = 35;
const double buttonBorderRadius = 90;
const double buttonShadowBlurRadius = 4;
const double buttonShadowSpreadRadius = 2;
const double buttonShadowOffsetX = 1;
const double buttonShadowOffsetY = 4;

class IntroductoryThirdPage extends StatelessWidget {
  static const routeName = '/page_3';

  const IntroductoryThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Expanded(
        flex: 10,
        child: Container(
          height: screenSize.height,
          width: screenSize.width,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: screenSize.height * (topMarginLottie / 800)),
                  child: Lottie.asset('assets/lottie_four.json',
                      height: screenSize.height * 0.25,
                      width: screenSize.width * 0.5),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: screenSize.height * (topMarginText1 / 800)),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        "Let’s Eat.....",
                        textStyle: GoogleFonts.allison(
                          textStyle: TextStyle(
                              fontSize: screenSize.width *
                                  (animatedTextFontSize1 / 400),
                              fontWeight: FontWeight.bold,
                              color: Colors.amber.shade900,
                              letterSpacing: .3),
                        ),
                        speed: const Duration(milliseconds: 100),
                      ),
                    ],
                    totalRepeatCount: 1,
                    pause: const Duration(milliseconds: 100),
                    displayFullTextOnTap: false,
                    stopPauseOnTap: false,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: screenSize.height * (topMarginText2 / 800)),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        "Food is really and truly the \n   most effective medicine",
                        textStyle: GoogleFonts.abyssinicaSil(
                          textStyle: TextStyle(
                              fontSize: screenSize.width *
                                  (animatedTextFontSize2 / 400),
                              fontWeight: FontWeight.bold,
                              color: Colors.amber.shade600,
                              letterSpacing: .3),
                        ),
                        speed: const Duration(milliseconds: 100),
                      ),
                    ],
                    totalRepeatCount: 1,
                    pause: const Duration(milliseconds: 100),
                    displayFullTextOnTap: false,
                    stopPauseOnTap: false,
                  ),
                ),
                CustomButton(
                  onTap: () {

                    // Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginPage() ,));
                  },
                  containerHeight: screenSize.height * (buttonHeight / 800),
                  containerWidth: screenSize.width * (buttonWidth / 400),
                  child: const Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                          color: AppColor.buttonTextColor,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
