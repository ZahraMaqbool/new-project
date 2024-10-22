import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_practice/core/common/widgets/continue_text.dart';
import 'package:practice_practice/core/common/widgets/custom_text_field.dart';
import 'package:practice_practice/core/common/widgets/divider.dart';
import 'package:practice_practice/core/common/widgets/user_side_btn.dart';
import 'package:practice_practice/core/constants/string/app_colors.dart';
import 'package:practice_practice/features/client/views/screens/dash_board_screen.dart';
// import 'package:practice_practice/features/client/views/dash_board_screen.dart';
// import 'package:practice_practice/features/client/widgets/dash_board_screen.dart';
import 'package:practice_practice/features/client/widgets/forget_password_page.dart';
import 'package:practice_practice/features/client/widgets/sign_up_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});
  static const name = '/signInPage';

  static const double _iconWidth = 0.18;
  static const double _iconHeight = 0.18;
  static const _twentyFlex = 20;
  static const _fiveFlex = 5;
  static const _tenFlex1 = 10;
  static const _tenFlex = 10;
  static const _fogetTextFlex = 10;
  // static const _fourFlex = 4;
  static const _twentyFlex1 = 20;
  static const _twentyFiveFlex = 20;

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _rightAnimation;
  late Animation<Offset> _endAnimation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..repeat(reverse: true);

    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.bounceInOut));
    _animation = Tween<Offset>(
            begin: const Offset(-1.0, 0.0), end: const Offset(0.0, 0.0))
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.easeInOut));
    _animationController.forward();
    _rightAnimation = Tween<Offset>(
            begin: const Offset(0.0, -1.0), end: const Offset(0.0, 0.0))
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.easeInOut));
    _endAnimation =
        Tween<Offset>(begin: const Offset(0, 1), end: const Offset(0.0, 0.0))
            .animate(CurvedAnimation(
                parent: _animationController, curve: Curves.easeInOut));
    _animationController.forward();
  }

  final TextEditingController _emailConroller = TextEditingController();
  final TextEditingController _numberConroller = TextEditingController();
  final TextEditingController _passwordConroller = TextEditingController();

  @override
  void dispose() {
    _emailConroller.dispose();
    _numberConroller.dispose();
    _passwordConroller.dispose();

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
                const Spacer(
                  flex: SignInPage._twentyFlex,
                ),
                SlideTransition(
                  position: _rightAnimation,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Text(
                      'Sign In',
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                const Spacer(
                  flex: SignInPage._fiveFlex,
                ),
                SlideTransition(
                  position: _animation,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'Welcome back! Please enter your details.',
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const Spacer(
                  flex: SignInPage._fiveFlex,
                ),
                SlideTransition(
                  position: _endAnimation,
                  child: Container(
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
                          flex: SignInPage._tenFlex1,
                        ),
                        CustomTextFormField(
                          hintAndLabelText: 'Email',
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {},
                          textEditingController: _emailConroller,
                        ),
                        const Spacer(
                          flex: SignInPage._fiveFlex,
                        ),
                        CustomTextFormField(
                          hintAndLabelText: 'Phone Number',
                          keyboardType: TextInputType.phone,
                          validator: (value) {},
                          textEditingController: _numberConroller,
                        ),
                        const Spacer(
                          flex: SignInPage._fiveFlex,
                        ),
                        CustomTextFormField(
                          hintAndLabelText: 'Password',
                          keyboardType: TextInputType.text,
                          validator: (value) {},
                          textEditingController: _passwordConroller,
                        ),

                        // TextButton(
                        //     onPressed: () {
                        //       Navigator.pushNamed(
                        //           context, ForgetPasswordPage.routeName);
                        //     },
                        //     child: const Text(
                        //       "Forget Password",
                        //       style: TextStyle(color: Colors.red),
                        //     )),
                        Expanded(
                            flex: SignInPage._fogetTextFlex,
                            child: ForgetPasswordButton(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, ForgetPasswordPage.routeName);
                                },
                                textColor: Colors.red)),
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
                        const Center(
                          child: DividerWidget(),
                        ),
                      ],
                    ),
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
