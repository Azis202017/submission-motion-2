import 'package:flutter/material.dart';
import 'package:submission_2/app/model/recommendation_model.dart';
import 'package:submission_2/app/theme/fonts.dart';
import 'package:submission_2/app/widgets/home/recommendation_card_widget.dart';

class RecommendationWidget extends StatelessWidget {
  final List<RecommendationModel> recommendationsListModel = [
    RecommendationModel(
      image: 'family_package.png',
      rating: 4.7,
      title: 'Family Package',
      subtitle: '1 large table 6 chair',
      price: 'Rp 320.000',
    ),
    RecommendationModel(
      image: 'single_package.png',
      rating: 4.9,
      title: 'Single Breakfast',
      subtitle: '1 table 1 chair',
      price: 'Rp 70.000',
    ),
    RecommendationModel(
      image: 'date_package.png',
      rating: 4.9,
      title: 'Date Package',
      subtitle: '1 table 2 chair',
      price: 'Rp 135.000',
    ),
  ];
  RecommendationWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recommendation',
          style: title2,
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 280,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: recommendationsListModel.length,
            itemBuilder: (context, index) {
              RecommendationModel getData = recommendationsListModel[index];
              return RecommendationCardWidget(
                image: getData.image,
                rating: getData.rating,
                title: getData.title,
                subtitle: getData.subtitle,
                price: getData.price,
              );
            },
          ),
        ),
      ],
    );
  }
}
