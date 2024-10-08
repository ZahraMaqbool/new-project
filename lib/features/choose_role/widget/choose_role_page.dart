import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_practice/core/common/widgets/custom_button.dart';
import 'package:practice_practice/core/common/widgets/divider.dart';
import 'package:practice_practice/core/constants/string/app_colors.dart';
import 'package:practice_practice/features/client/views/screens/sign_in_page.dart';


class ChooseRolePage extends StatelessWidget {
  static const routeName = '/choose_Role';
  const ChooseRolePage({super.key});

  static const int _fiveFlexRate = 15;
  static const int _twentyFlexRate = 20;
  static const int _tenFlexRate = 10;
  static const _twentyFiveFlexRate = 25;
  static const _thirtyFiveFlexRate = 35;
  static const _oneFlexRate = 1;
  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Column(
        children: [
          Align(
            alignment: const Alignment(0, 0),
            child: Image.asset(
              // 'a ssets/lottie_one.json',
              "assets/plate_3.jpeg",
              width: width * 0.6,
              height: height * 0.4,
              fit: BoxFit.contain,
            ),
          ),
          // FlutterCarousel.builder(
          //   itemCount: 3,
          //   itemBuilder: (context, index, realIndex) {
          //     return EnlargeCenterPage(
          //       height: height,
          //       width: width,
          //     );
          //   },
          //   options: FlutterCarouselOptions(
          //     aspectRatio: 20 / 9,
          //     viewportFraction: 0.9,
          //     initialPage: 0,
          //     autoPlay: true,
          //     slideIndicator: CircularSlideIndicator(
          //       slideIndicatorOptions: SlideIndicatorOptions(
          //           padding: const EdgeInsets.all(8),
          //           currentIndicatorColor: Colors.amber.shade900,
          //           indicatorBackgroundColor: AppColors.grayColor),
          //     ),
          //   ),
          // ),

          SizedBox(
            width: width * 0.9,
            child: Text(
              'Food Delivery App',
              style: GoogleFonts.amaranth(
                  fontSize: 24, fontWeight: FontWeight.w700),
            ),
          ),
          const Spacer(
            flex: _tenFlexRate,
          ),
          SizedBox(
            width: width * 0.9,
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  "Let,s eat some diet food while steak to cook WhenEver yor are losing or gaining.we have all the recipies you,ll need",
                  textStyle: GoogleFonts.alumniSansPinstripe(
                    textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        letterSpacing: 1),
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

          const Spacer(
            flex: _twentyFlexRate,
          ),
          SizedBox(
            width: width * 0.9,
            child: Text(
              'Continue as :',
              style: GoogleFonts.alfaSlabOne(
                  fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          const Spacer(
            flex: _fiveFlexRate,
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                btnBackgroundColor: AppColors.buttonBackGround,
                btnTextColor: AppColors.whiteColor,
                btnName: "Continue as Admin",
                onTap: () {},
              )),
          const Spacer(
            flex: _fiveFlexRate,
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                btnBackgroundColor: AppColors.buttonBackGround,
                btnTextColor: AppColors.whiteColor,
                btnName: "Continue as Customer",
                onTap: () {
                  Navigator.pushNamed(context, SignInPage.name);
                },
              )),
          const Spacer(
            flex: _twentyFiveFlexRate,
          ),

          const Spacer(
            flex: _thirtyFiveFlexRate,
          ),
          const DividerWidget(),
          const Spacer(
            flex: _oneFlexRate,
          )
        ],
      ),
    );
  }
}
