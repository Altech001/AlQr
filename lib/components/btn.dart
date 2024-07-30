import 'package:flutter/material.dart';

class ButtonWidegt extends StatelessWidget {
  final String btnText;
  final iconImage;
const ButtonWidegt({
    super.key,
    required this.btnText,
    required this.iconImage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onPressed,
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blueAccent,
          ),
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(iconImage),
              Text(
                btnText,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
              ),
            ],
          )),
    );
  }
}
