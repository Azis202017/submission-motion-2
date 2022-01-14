import 'package:flutter/material.dart';
import 'package:submission_2/app/theme/fonts.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Michael',
              style: title1,
            ),
            Text(
              'Get your favorite food here!',
              style: subtitle2,
            ),
          ],
        ),
        Image.asset(
          'assets/images/cart.png',
          width: 28,
          height: 28,
        ),
      ],
    );
  }
}
