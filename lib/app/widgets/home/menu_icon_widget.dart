import 'package:flutter/material.dart';
import 'package:submission_2/app/theme/color.dart';
import 'package:submission_2/app/theme/fonts.dart';

class MenuIconWidget extends StatelessWidget {
  final String image;
  final String text;
  const MenuIconWidget({Key? key, required this.image, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width : 44, 
          height : 44,
          padding : const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.0,
              color: borderGrey,
            ),
            borderRadius: BorderRadius.circular(
              40,
            ),
          ),
          child: Image.asset(
            image,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          text,
          style: subtitle2,
        ),
      ],
    );
  }
}
