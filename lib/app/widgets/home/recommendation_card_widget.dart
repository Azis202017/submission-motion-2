import 'package:flutter/material.dart';
import 'package:submission_2/app/theme/color.dart';
import 'package:submission_2/app/theme/fonts.dart';

class RecommendationCardWidget extends StatelessWidget {
  final String image;
  final double rating;
  final String title;
  final String subtitle;
  final String price;
  const RecommendationCardWidget({
    Key? key,
    required this.image,
    required this.rating,
    required this.title,
    required this.subtitle,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 16.0,
      ),
      child: SizedBox(
        width: 160,
        child: Card(
          elevation: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/$image',
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width : 60,
                          decoration: BoxDecoration(
                            color: black.withOpacity(0.71),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(6),
                              topRight : Radius.circular(6),
                            ),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Color(0xffF0C324),
                              ),
                              Text(
                                '$rating',
                                style: ratings,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 12),
                child: Text(title, style: subtitle2),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 4),
                child: Text(subtitle, style: body3),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                  top: 4,
                  bottom: 12,
                ),
                child: Text(price, style: subtitle2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
