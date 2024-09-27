import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroductoryFirstPage extends StatelessWidget {
  static const routeName = '/page_1';
  const IntroductoryFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Expanded(
          flex: 100,
          child: Container(
              height: MediaQuery.sizeOf(context).height * 1,
              width: MediaQuery.sizeOf(context).width * 1,
              decoration: const BoxDecoration(
                  // color: Colors.black
          
                  ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SafeArea(
                      child: Container(
                        margin: const EdgeInsets.only(top: 50),
                        decoration: const BoxDecoration(),
                        child: Image.asset(
                          'assets/plate_2.jpeg',
                          height: 300,
                          width: 300,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
          
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(
                            " Welcome to Food",
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
                            "Let,s eat some Diet Food\n While steak to cook.",
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
                      // child:
                      //     Text("Let,s eat some Diet Food\n While steak to cook.",
                      //         // ),
                      //         style: GoogleFonts.abhayaLibre(
                      //           textStyle: TextStyle(
                      //               fontSize: 22,
                      //               color: Colors.grey.shade500,
                      //               letterSpacing: .5),
                      //         )),
                    ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //           builder: (context) =>const Page2(),
                    //         ));
                    //   },
                    //   child: Container(
                    //     height: 50,
                    //     width: 50,
                    //     margin: const EdgeInsets.only(top: 40),
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
