import 'package:flutter/material.dart';
import 'package:submission_2/app/pages/bottom_navigation_page.dart';
import 'package:submission_2/app/pages/food_page.dart';
import 'package:submission_2/app/pages/home_page.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: BottomNavigationPage.routeName,
      routes: {
        BottomNavigationPage.routeName : (context) => const BottomNavigationPage(),
        HomePage.routeName: (context) => const HomePage(),
        FoodPage.routeName: (context) => const FoodPage()
      },
    );
  }
}
