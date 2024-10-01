import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class IntroductorySecondPage extends StatelessWidget {
  static const routeName = '/page_2';

  const IntroductorySecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    final Size screenSize = MediaQuery.of(context).size;

    
    const double marginTopLottie = 0.07; 
    const double marginTopText1 = 0.03; 
    const double marginTopText2 = 0.02; 
    const double lottieSize = 0.2;
    const double textFontSize1 = 0.08; 
    const double textFontSize2 = 0.05; 

    return Scaffold(
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        decoration: const BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Lottie animation container
              Container(
                margin: EdgeInsets.only(top: screenSize.height * marginTopLottie),
                child: ClipRRect(
                  child: Lottie.asset(
                    'assets/lottie_three.json',
                    height: screenSize.height * lottieSize,
                    width: screenSize.height * lottieSize,
                  ),
                ),
              ),

              // First text container
              Container(
                margin: EdgeInsets.only(top: screenSize.height * marginTopText1),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      "Healthy & Tasty",
                      textStyle: GoogleFonts.allison(
                        textStyle: TextStyle(
                          fontSize: screenSize.width * textFontSize1,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber.shade900,
                          letterSpacing: 0.3,
                        ),
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

              // Second text container
              Container(
                margin: EdgeInsets.only(top: screenSize.height * marginTopText2),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      "Eat today Live another\n     memorable day",
                      textStyle: GoogleFonts.abhayaLibre(
                        textStyle: TextStyle(
                          fontSize: screenSize.width * textFontSize2,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber.shade600,
                          letterSpacing: 0.3,
                        ),
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

              
            ],
          ),
        ),
      ),
    );
  }
}