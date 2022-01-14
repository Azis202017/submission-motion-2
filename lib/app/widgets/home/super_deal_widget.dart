import 'package:flutter/material.dart';
import 'package:submission_2/app/theme/color.dart';
import 'package:submission_2/app/theme/fonts.dart';

class SuperDeal extends StatelessWidget {
  const SuperDeal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/promo2.png',
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 16, top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 87,
                  child: Text(
                    'Super Deal Date'.toUpperCase(),
                    style: heading3.copyWith(
                      color: white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text('40% Off', style: title2.copyWith(color: white)),
                const SizedBox(
                  height: 4,
                ),
                Text('*Until 23 Sept', style: body3.copyWith(color: white)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

