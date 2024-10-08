import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_practice/core/common/widgets/divider.dart';

class ContineWith extends StatelessWidget {
  final double width;
  const ContineWith({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const DividerWidget(
          widthSize: 0.3,
          thickness: 1,
        ),
        const Spacer(flex: 5),
        SizedBox(
          width: width * 0.3,
          child: Text(
            'Or continue with',
            style: GoogleFonts.alumniSans(
                fontSize: 19, fontWeight: FontWeight.w600),
          ),
        ),
        const Spacer(
          flex: 5,
        ),
        const DividerWidget(
          widthSize: 0.3,
          thickness: 1,
        ),
      ],
    );
  }
}
