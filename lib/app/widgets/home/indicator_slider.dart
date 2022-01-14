import 'package:flutter/material.dart';
import 'package:submission_2/app/data/list_carousel_model.dart';
import 'package:submission_2/app/theme/color.dart';

class IndicatorSlider extends StatelessWidget {
  const IndicatorSlider({
    Key? key,
    required int current,
  }) : _current = current, super(key: key);

  final int _current;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: listCarousel.asMap().entries.map(
        (entry) {
          return Container(
            width: 8.0,
            height: 8.0,
            margin: const EdgeInsets.symmetric(
                vertical: 8.0, horizontal: 4.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _current == entry.key
                  ? primary50
                  : grey,
            ),
          );
        },
      ).toList(),
    );
  }
}