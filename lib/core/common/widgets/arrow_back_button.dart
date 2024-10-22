import 'package:flutter/material.dart';

class ArrowBackButton extends StatelessWidget {
  const ArrowBackButton({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 30, top: 40),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(90),
            boxShadow: const [
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-1, 2),
                  blurRadius: 3,
                  spreadRadius: 1,
                  blurStyle: BlurStyle.inner)
            ]),
        child: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
    );
  }
}
