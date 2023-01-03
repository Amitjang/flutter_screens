import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  final text;
  final textColor;
  final bgColor;


   const CustomButton({Key? key, this.text, this.textColor, this.bgColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          color: bgColor),
      height: 48,
      width: 161,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: textColor),
        ),
      ),
    );
  }
}
