import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class IconButtonWidget extends StatelessWidget {
  final String image;
  const IconButtonWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 60,
        height: 44,
        decoration: BoxDecoration(
          color: const Color(0xFFECECEC),
          borderRadius: BorderRadius.circular(10)
        ),
        child: SvgPicture.asset(image),
      ),
    );
  }
}
