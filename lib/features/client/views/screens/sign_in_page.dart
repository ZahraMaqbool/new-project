import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_practice/core/common/widgets/continue_text.dart';
import 'package:practice_practice/core/common/widgets/custom_text_field.dart';
import 'package:practice_practice/core/common/widgets/user_side_btn.dart';
import 'package:practice_practice/core/constants/string/app_colors.dart';
import 'package:practice_practice/features/client/views/screens/dash_board_screen.dart';
import 'package:practice_practice/features/client/views/screens/sign_up_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});
  static const name = '/signInPage';

  static const double _iconWidth = 0.18;
  static const double _iconHeight = 0.18;
  static const _twentyFlex = 20;
  static const _fiveFlex = 5;
  static const _tenFlex1 = 10;
  static const _tenFlex = 10;
  static const _fourFlex = 4;
  static const _twentyFlex1 = 20;
  static const _twentyFiveFlex = 20;

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(
                  flex: SignInPage._twentyFlex,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const Spacer(
                  flex: SignInPage._fiveFlex,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Welcome back! Please enter your details.',
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const Spacer(
                  flex: SignInPage._fiveFlex,
                ),
                Container(
                  height: height * 0.7,
                  width: width * 4,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Column(
                    children: [
                      const Spacer(
                        flex: SignInPage._tenFlex1,
                      ),
                      CustomTextFormField(
                        hintAndLabelText: 'Email',
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {},
                        textEditingController: TextEditingController(),
                      ),
                      const Spacer(
                        flex: SignInPage._fiveFlex,
                      ),
                      CustomTextFormField(
                        hintAndLabelText: 'Phone Number',
                        keyboardType: TextInputType.phone,
                        validator: (value) {},
                        textEditingController: TextEditingController(),
                      ),
                      const Spacer(
                        flex: SignInPage._fiveFlex,
                      ),
                      CustomTextFormField(
                        hintAndLabelText: 'Password',
                        keyboardType: TextInputType.text,
                        validator: (value) {},
                        textEditingController: TextEditingController(),
                      ),
                      const Spacer(
                        flex: SignInPage._twentyFiveFlex,
                      ),
                      Expanded(
                        flex: SignInPage._twentyFiveFlex,
                        child: ContineWith(
                          width: width,
                        ),
                      ),
                      const Spacer(
                        flex: SignInPage._tenFlex,
                      ),
                      Expanded(
                          flex: SignInPage._twentyFlex1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/google.jpeg",
                                width: width * SignInPage._iconWidth,
                                height: height * SignInPage._iconHeight,
                                fit: BoxFit.contain,
                              ),
                              Image.asset(
                                "assets/facebook.png",
                                width: width * SignInPage._iconWidth,
                                height: height * SignInPage._iconHeight,
                                fit: BoxFit.contain,
                              ),
                              Image.asset(
                                "assets/instagram.jpeg",
                                width: width * SignInPage._iconWidth,
                                height: height * SignInPage._iconHeight,
                                fit: BoxFit.contain,
                              ),
                            ],
                          )),
                      const Spacer(
                        flex: SignInPage._twentyFlex,
                      ),
                      UserSideBtn(
                        btnName: 'Sign In',
                        btnBackgroundColor: AppColors.buttonBackGround,
                        onTap: () {
                          Navigator.pushNamed(
                              context, DashBoardScreen.routeName);
                        },
                      ),
                      const Spacer(
                        flex: SignInPage._tenFlex,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, SignUpPage.name);
                        },
                        child: Center(
                          child: Text(
                            'First time here?? Sign up',
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      // const Center(
                      //   child: DividerWidget(),
                      // ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
