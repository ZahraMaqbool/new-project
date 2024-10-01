import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class IntroductoryFirstPage extends StatelessWidget {
  static const routeName = '/page_1';

  // constants for
  static const double lottieTopMarginFactor = 0.05; 
  static const double lottieSizeFactor = 0.2; 
  static const double text1TopMarginFactor = 0.03; 
  static const double text2TopMarginFactor = 0.02; 
  static const double text1FontSizeFactor = 0.1; 
  static const double text2FontSizeFactor = 0.04; 

  const IntroductoryFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: screenSize.width,
        height: screenSize.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SafeArea(
                child: Container(
                  margin: EdgeInsets.only(
                      top: screenSize.height * lottieTopMarginFactor),
                  child: Lottie.asset(
                    'assets/lottie_two.json',
                    height: screenSize.height * lottieSizeFactor,
                    width: screenSize.height * lottieSizeFactor,
                  ),
                ),
              ),
             
              Container(
                margin: EdgeInsets.only(
                    top: screenSize.height * text1TopMarginFactor),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      "Welcome to Food",
                      textStyle: GoogleFonts.allison(
                        textStyle: TextStyle(
                          fontSize: screenSize.width * text1FontSizeFactor,
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
             
              Container(
                margin: EdgeInsets.only(
                    top: screenSize.height * text2TopMarginFactor),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      "Let's eat some Diet Food\nWhile steak to cook.",
                      textStyle: GoogleFonts.abhayaLibre(
                        textStyle: TextStyle(
                          fontSize: screenSize.width * text2FontSizeFactor,
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
              // Button (if uncommented)
            ],
          ),
        ),
      ),
    );
  }
}
