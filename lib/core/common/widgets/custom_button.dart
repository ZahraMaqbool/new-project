import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final Color btnBackgroundColor;
  final Color btnTextColor;
  final double btnWidth, btnHeight;
  final String btnName;
  final double borderRadius;
  const CustomButton(
      {super.key,
      required this.onTap,
      this.btnHeight = 0.08,
      this.btnWidth = 0.9,
      this.borderRadius = 14,
      required this.btnBackgroundColor,
      required this.btnTextColor,
      required this.btnName});
  //font size variable
  static const double _fontSize = 18;
  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height * btnHeight,
        width: width * btnWidth,
        decoration: BoxDecoration(
          color: btnBackgroundColor,
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                offset: Offset(1, 1),
                blurRadius: 3,
                spreadRadius: 2,
                blurStyle: BlurStyle.outer)
          ],
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: Text(
            btnName,
            style: GoogleFonts.alice(
              fontSize: _fontSize,
              fontWeight: FontWeight.bold,
              color: btnTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
