import 'package:flutter/material.dart';
import 'package:submission_2/app/theme/color.dart';
import 'package:submission_2/app/theme/fonts.dart';

class SuperFamily extends StatelessWidget {
  const SuperFamily({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/promo1.png',
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 12,
                ),
                Column(
                  children: [
                    Text(
                      'Super Family',
                      style: heading3.copyWith(color: white),
                    ),
                    Text(
                      '30% OFF',
                      style: heading5.copyWith(color: white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Text('*Minimum 6 People', style: body4)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
