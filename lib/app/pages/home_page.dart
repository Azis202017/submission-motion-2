import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:submission_2/app/data/list_carousel_model.dart';
import 'package:submission_2/app/widgets/home/header_widget.dart';
import 'package:submission_2/app/widgets/home/indicator_slider.dart';
import 'package:submission_2/app/widgets/home/menu_widget.dart';
import 'package:submission_2/app/widgets/home/recommendation_widget.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const HeaderWidget(),
                const SizedBox(height: 40),
                CarouselSlider(
                  items: listCarousel,
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(
                        () {
                          _current = index;
                        },
                      );
                    },
                    viewportFraction: 1,
                  ),
                ),
                IndicatorSlider(current: _current),
                const SizedBox(height: 40),
                const MenuWidget(),
                const SizedBox(height: 40),
                RecommendationWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
