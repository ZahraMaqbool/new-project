import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_practice/core/common/widgets/arrow_back_button.dart';
import 'package:practice_practice/core/common/widgets/custom_button.dart';
import 'package:practice_practice/core/common/widgets/custom_text_field.dart';
import 'package:practice_practice/core/common/widgets/divider.dart';
import 'package:practice_practice/core/constants/string/app_colors.dart';

import 'sign_in_page.dart';

class ForgetPasswordPage extends StatefulWidget {
  static const routeName = "/forget_password";
  const ForgetPasswordPage({super.key});
  static const name = '/signInPage';

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPasswordPage> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

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
                // const Spacer(flex: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ArrowBackButton(
                    onTap: () {
                      Navigator.pushNamed(context, SignInPage.name);
                    },
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Text(
                    'Forget Password',
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const Spacer(flex: 5),
                Container(
                  height: height * 0.6,
                  width: width * 4,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Expanded(
                        flex: 10,
                        child: CustomTextFormField(
                          hintAndLabelText: 'Email',
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {},
                          textEditingController: _emailController,
                        ),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      Expanded(
                        flex: 0,
                        child: CustomButton(
                            onTap: () {
                              // Navigator.pushNamed(
                                  // context, VerificationPasswordPage.routeName);
                            },
                            btnBackgroundColor: AppColors.buttonBackGround,
                            btnTextColor: AppColors.whiteColor,
                            btnName: "Send Code"),
                      ),
                      const Spacer(
                        flex: 20,
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

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({
    required this.onTap,
    required this.textColor,
    super.key,
  });
  final VoidCallback onTap;
  final Color textColor;
  final double fontSize = 14;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          margin: const EdgeInsets.only(left: 140),
          child: Text(
            "Forget Password",
            style: TextStyle(color: textColor, fontSize: fontSize),
          )),
    );
  }
}
