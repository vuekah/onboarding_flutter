import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final GestureTapCallback onTap;
  final double? width;
  final String title;
  final Color? buttonColor;
  final Color? textColor;
  final double height;
  final double fontSize;
  const ButtonWidget(
      {super.key,
      required this.onTap,
      this.width = 160,
      required this.title,
      this.buttonColor,
      this.textColor,  this.fontSize=20,this.height=60});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: buttonColor?? const Color(0x601F41BB),
                spreadRadius: 2,
                blurRadius: 6,
                offset: const Offset(0, 4), // changes position of shadow
              ),
            ],
            color:  buttonColor?? const Color(0xFF1F41BB),
            borderRadius: BorderRadius.circular(10)),
        child: Align(
            alignment: Alignment.center,
            child: Text(
              title,
              style:  TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: fontSize,
                  color: textColor ?? const Color(0xFFFFFFFF)),
            )),
      ),
    );
  }
}
