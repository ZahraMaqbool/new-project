import 'package:flutter/material.dart';
import 'package:practice_practice/features/choose_role/widget/choose_role_page.dart';
import 'package:practice_practice/features/client/views/screens/dash_board_screen.dart';
// import 'package:practice_practice/features/client/views/screens/items_detail_page.dart';
// import 'package:practice_practice/features/client/views/dash_board_screen.dart';
// import 'package:practice_practice/features/client/widgets/dash_board_screen.dart';
import 'package:practice_practice/features/client/widgets/forget_password_page.dart';
import 'package:practice_practice/features/client/widgets/sign_in_page.dart';
import 'package:practice_practice/features/client/widgets/sign_up_page.dart';
// import 'package:practice_practice/features/client/widgets/verification_password_page.dart';
// import 'package:practice_practice/features/client/widgets/sign_in_page.dart';
import 'package:practice_practice/on_boarding/views/widgets/on_bording_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  return switch (settings.name) {
    OnBordingPage.routName => AnimatedRoutes(
        setting: settings,
        child: OnBordingPage(),
      ),
    DashBoardScreen.routeName => AnimatedRoutes(
        setting: settings,
        child: const DashBoardScreen(),
      ),
    ChooseRolePage.routeName => AnimatedRoutes(
        setting: settings,
        child: const ChooseRolePage(),
      ),
    SignInPage.name => AnimatedRoutes(
        setting: settings,
        child: const SignInPage(),
      ),
    SignUpPage.name => AnimatedRoutes(
        setting: settings,
        child: const SignUpPage(),
      ),
    ForgetPasswordPage.routeName => AnimatedRoutes(
        setting: settings,
        child: const ForgetPasswordPage(),
      ),
      
    ChooseRolePage.routeName => AnimatedRoutes(
        setting: settings,
        child: const ChooseRolePage(),
      ),
    // ItemsDetailPage.routeName => AnimatedRoutes(
    //     setting: settings,
    //     child: const ItemsDetailPage(items: ,),
    //   ),
    _ => AnimatedRoutes(
        setting: settings,
        child: Container(
          color: Colors.red,
          child: const Center(
            child: Text('404! page not found'),
          ),
        ),
      ),
  };
}

//create the class for slide transition
class AnimatedRoutes extends PageRouteBuilder {
  final Widget child;
  final RouteSettings? setting;
  static Tween<Offset> tween =
      Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero);

  AnimatedRoutes({required this.child, this.setting})
      : super(
          settings: setting,
          pageBuilder: (context, animation, secondaryAnimation) => child,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: tween.animate(animation),
              child: child,
            );
          },
        );
}
