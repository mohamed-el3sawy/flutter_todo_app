import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
        required this.title,
        this.size = 17,
        this.color = Colors.black,
        this.fontWeight = FontWeight.w400,
        this.decoration = TextDecoration.none,
        this.textAlign = TextAlign.start
      })
      : super(key: key);

  final String title;
  final double size;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final TextDecoration decoration ;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: TextStyle(fontSize: size, color: color, fontWeight: fontWeight, decoration: decoration),
    );
  }
}
