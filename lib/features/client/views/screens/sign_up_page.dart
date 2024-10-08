import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_practice/core/common/widgets/custom_text_field.dart';
import 'package:practice_practice/core/common/widgets/divider.dart';
import 'package:practice_practice/core/common/widgets/user_side_btn.dart';
import 'package:practice_practice/core/constants/string/app_colors.dart';
import 'package:practice_practice/features/client/views/screens/sign_in_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});
  static const name = '/signUpPage';

  static const double _iconWidth = 0.18;
  static const double _iconHeight = 0.18;
  static const _twentyFlex = 20;
  static const _twentyFlex1 = 20;
  static const _fiveFlex = 5;
  static const _tenFlex = 10;
  // static const _twentyFiveFlex = 25;

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                  flex: SignUpPage._twentyFlex,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Text(
                    'Sign up',
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const Spacer(
                  flex: SignUpPage._fiveFlex,
                ),
                Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Text(
                    'Hello there! Let’s create your account',
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const Spacer(
                  flex: SignUpPage._fiveFlex,
                ),
                Container(
                  height: height * 0.8,
                  width: width * 4,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Column(
                    children: [
                      const Spacer(
                        flex: 15,
                      ),
                      CustomTextFormField(
                        hintAndLabelText: 'Name',
                        keyboardType: TextInputType.name,
                        validator: (value) {},
                        textEditingController: TextEditingController(),
                      ),
                      const Spacer(
                        flex: SignUpPage._fiveFlex,
                      ),
                      CustomTextFormField(
                        hintAndLabelText: 'Email',
                        keyboardType: TextInputType.name,
                        validator: (value) {},
                        textEditingController: TextEditingController(),
                      ),
                      const Spacer(
                        flex: SignUpPage._fiveFlex,
                      ),
                      CustomTextFormField(
                        hintAndLabelText: 'Phone No',
                        keyboardType: TextInputType.name,
                        validator: (value) {},
                        textEditingController: TextEditingController(),
                      ),
                      const Spacer(
                        flex: SignUpPage._fiveFlex,
                      ),
                      CustomTextFormField(
                        hintAndLabelText: 'Password',
                        keyboardType: TextInputType.name,
                        validator: (value) {},
                        textEditingController: TextEditingController(),
                      ),
                      const Spacer(
                        flex: SignUpPage._fiveFlex,
                      ),
                      CustomTextFormField(
                        hintAndLabelText: 'Confirm Password',
                        keyboardType: TextInputType.name,
                        validator: (value) {},
                        textEditingController: TextEditingController(),
                      ),
                      const Spacer(
                        flex: SignUpPage._tenFlex,
                      ),
                      Expanded(
                          flex: SignUpPage._twentyFlex1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/google.jpeg",
                                width: width * SignUpPage._iconWidth,
                                height: height * SignUpPage._iconHeight,
                                fit: BoxFit.contain,
                              ),
                              Image.asset(
                                "assets/facebook.png",
                                width: width * SignUpPage._iconWidth,
                                height: height * SignUpPage._iconHeight,
                                fit: BoxFit.contain,
                              ),
                              Image.asset(
                                "assets/instagram.jpeg",
                                width: width * SignUpPage._iconWidth,
                                height: height * SignUpPage._iconHeight,
                                fit: BoxFit.contain,
                              ),
                            ],
                          )),
                      const Spacer(
                        flex: SignUpPage._twentyFlex,
                      ),
                      UserSideBtn(
                        btnName: 'Sign Up',
                        btnBackgroundColor: AppColors.buttonBackGround,
                        onTap: () {},
                      ),
                      const Spacer(
                        flex: SignUpPage._tenFlex,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(SignInPage.name);
                        },
                        child: Center(
                          child: Text(
                            'Already a member? Log in',
                            style: GoogleFonts.roboto(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      const Center(
                        child: DividerWidget(),
                      ),
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
