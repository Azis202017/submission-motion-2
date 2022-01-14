import 'package:flutter/material.dart';
import 'package:submission_2/app/pages/food_page.dart';
import 'package:submission_2/app/widgets/home/menu_icon_widget.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, FoodPage.routeName);
          },
          child: const MenuIconWidget(
            image: 'assets/images/food.png',
            text: 'Food',
          ),
        ),
        const MenuIconWidget(
          image: 'assets/images/table.png',
          text: 'Table',
        ),
       const MenuIconWidget(
          image: 'assets/images/payment.png',
          text: 'Payment',
        ),
        const MenuIconWidget(
          image: 'assets/images/more.png',
          text: 'More',
        ),
      ],
    );
  }
}
