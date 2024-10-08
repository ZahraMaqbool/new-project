import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  static const routeName = "/dashboard_screen";
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.amber,);
  }
}
