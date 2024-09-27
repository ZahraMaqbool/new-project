import 'package:flutter/material.dart';
import 'package:practice_practice/on_boarding_screens/introductory_pages/introductory_first_page.dart';
import 'package:practice_practice/on_boarding_screens/introductory_pages/introductory_third_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'on_boarding_screens/introductory_pages/introductory_second_page.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Food Delivery app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController controller = PageController();

  final List<Widget> _list = [
    const Center(
      child: IntroductoryFirstPage(),
    ),
    const Center(
      child: IntroductorySecondPage(),
    ),
    const Center(child: IntroductoryThirdPage()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          scrollDirection: Axis.horizontal,
          controller: controller,
          children: _list,
        ),
        Positioned(
          top: 620,
          left: 150,
          child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              // effect: CustomizableEffect(
              //     dotDecoration: DotDecoration(
              //         borderRadius: BorderRadius.circular(10),
              //         color: Colors.red,
              //         rotationAngle: 90),
              //     activeDotDecoration: DotDecoration(
              //         color: Colors.red,
              //         dotBorder: DotBorder(
              //           color: Colors.black,
              //           width: 10,
              //         ))),
              // effect: const ScrollingDotsEffect(),
              // effect: ScaleEffect(activePaintStyle: PaintingStyle.fill),
              effect: WormEffect(
                dotColor: Colors.amber.shade600,
                activeDotColor: Colors.amber.shade900,
                dotHeight: 17,
                dotWidth: 17,
                // offset: 20.0,

                type: WormType.thinUnderground,
                // type: WormType.thin
                // type: WormType.underground,
              ),
              // effect: SwapEffect(
              //   dotColor: Colors.amber.shade700,
              //   dotWidth: 15,
              //   dotHeight: 15,
              //   // paintStyle: PaintingStyle.stroke
              //   paintStyle: PaintingStyle.fill,
              //   // radius: BorderSide.strokeAlignOutside
              //   spacing: 10,
              //   type: SwapType.normal,
              //   activeDotColor: Colors.amber.shade900,
              // ),
              onDotClicked: (index) {}),
        )
      ]),
    );
  }
}
