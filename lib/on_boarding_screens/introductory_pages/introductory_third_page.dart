import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_practice/core/colors.dart';

class IntroductoryThirdPage extends StatelessWidget {
  static const routeName = '/page_3';

  const IntroductoryThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Expanded(
      flex: 10,
      child: Container(
        height: MediaQuery.sizeOf(context).height * 1,
        width: MediaQuery.sizeOf(context).width * 1,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 40),
                  child: Image.asset(
                    'assets/plate_5.jpeg',
                    fit: BoxFit.fill,
                    height: 300,
                    width: 300,
                  )),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      "Let,s Eat.....",
                      textStyle: GoogleFonts.allison(
                        textStyle: TextStyle(
                            fontSize: 53,
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
                margin: const EdgeInsets.only(top: 10),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      "Food is really and truly the \n   most effective medicine",
                      textStyle: GoogleFonts.abyssinicaSil(
                        textStyle: TextStyle(
                            fontSize: 17,
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
                containerHeight: 50,
                containerWidth: 200,
              )
            ],
          ),
        ),
      ),
    ));
  }
}

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key, required this.containerHeight, required this.containerWidth});
  double containerHeight;
  double containerWidth;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) => const SecondPage(),
        //     ));
      },
      child: Container(
        height: containerHeight,
        width: containerWidth,
        margin: const EdgeInsets.only(top: 35),
        decoration: BoxDecoration(
            color: buttonBackGround,
            borderRadius: BorderRadius.circular(90),
            boxShadow: const [
              BoxShadow(
                  color: buttonShadowsColor,
                  blurRadius: 4,
                  spreadRadius: 2,
                  offset: Offset(1, 4)),
            ]),
        child: const Center(
          child: Text(
            "Get Started",
            style: TextStyle(
                color: buttonTextColor,
                fontSize: 17,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
