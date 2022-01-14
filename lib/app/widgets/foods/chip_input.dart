import 'package:flutter/material.dart';
import 'package:submission_2/app/theme/color.dart';
import 'package:submission_2/app/theme/fonts.dart';

class ChipWidget extends StatelessWidget {
  final String name;
  const ChipWidget({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 4,
        ),
        margin: const EdgeInsets.only(
          right: 24,
        ),
        decoration: BoxDecoration(
          color: greyChips,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(name, style: body2));
  }
}
