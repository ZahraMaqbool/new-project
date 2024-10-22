import 'package:flutter/material.dart';
import 'package:practice_practice/configuration/navigation/routes.dart';
import 'package:practice_practice/configuration/theme/app_theme.dart';
import 'package:practice_practice/on_boarding/views/widgets/on_bording_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.theme(),
        initialRoute: OnBordingPage.routName,
        onGenerateRoute: generateRoute,
        home: OnBordingPage());
        
  }
}
