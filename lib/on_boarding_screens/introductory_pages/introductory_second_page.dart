import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroductorySecondPage extends StatelessWidget {
  static const routeName = '/page_2';
  const IntroductorySecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Expanded(
      flex: 100,
      child: Container(
          height: MediaQuery.sizeOf(context).height * 1,
          width: MediaQuery.sizeOf(context).width * 1,
          decoration: const BoxDecoration(color: Colors.white),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    decoration: const BoxDecoration(),
                    margin: const EdgeInsets.only(top: 70),
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/plate_3.jpeg',
                        fit: BoxFit.fill,
                        height: 300,
                        width: 300,
                      ),
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        "Healthy & Tasty",
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
                  margin: const EdgeInsets.only(top: 20),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        "Eat toaday Live another\n     memorable day",
                        textStyle: GoogleFonts.abhayaLibre(
                          textStyle: TextStyle(
                              fontSize: 22,
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
                  // child: Text("Eat toaday Live another\n     memorable day ",
                  //     style: GoogleFonts.abhayaLibre(
                  //       textStyle: const TextStyle(
                  //           fontSize: 22,
                  //           color: Colors.grey,
                  //           letterSpacing: .5),
                  //     )),
                ),
                // GestureDetector(
                //   onTap: () {
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) => const Page3(),
                //         ));
                //   },
                //   child: Container(
                //     height: 50,
                //     width: 50,
                //     margin: const EdgeInsets.only(top: 30),
                //     decoration: BoxDecoration(
                //         color: Colors.white,
                //         borderRadius: BorderRadius.circular(90),
                //         boxShadow: const [
                //           BoxShadow(
                //               color: Colors.grey,
                //               blurRadius: 4,
                //               spreadRadius: 3,
                //               offset: Offset(-1, 2)),
                //         ]),
                //     child: const Icon(Icons.arrow_forward),
                //   ),
                // )
              ],
            ),
          )),
    ));
  }
}
