import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserHomePageAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final double width, height;
  const UserHomePageAppBarWidget(
      {super.key, required this.width, required this.height});
  static const double _height = 0.05;
  static const double _width = 0.1;
  static const double _marginRight = 20;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.amber.shade800,
      titleTextStyle: GoogleFonts.aBeeZee(color: Colors.black),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: _marginRight),
          height: height * _height,
          width: width * _width,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(90)),
          child: const Icon(
            Icons.messenger_outline,
            color: Colors.white,
          ),
        )
      ],
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello user\u{1F44B}',
            style:
                GoogleFonts.roboto(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          Text(
            'Hilal lab office ',
            style:
                GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 14),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
