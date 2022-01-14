import 'package:flutter/material.dart';
import 'package:submission_2/app/pages/home_page.dart';
import 'package:submission_2/app/theme/fonts.dart';

class BottomNavigationPage extends StatefulWidget {
  static const routeName = '/';
  const BottomNavigationPage({Key? key}) : super(key: key);

  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text(
      'Halaman Search',
    ),
    Text(
      'Halaman Recent',
    ),
     Text(
      'Halaman Profile',
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(
          _selectedIndex,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Icon(Icons.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Icon(
                Icons.search,
              ),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Icon(Icons.history_rounded),
            ),
            label: 'Recent',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Icon(Icons.person),
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedIconTheme: const IconThemeData(
          color: Colors.green,
        ),
        unselectedIconTheme: const IconThemeData(
          color: Colors.grey,
        ),
        unselectedLabelStyle: subtitle2,
        selectedItemColor: Colors.black,
        selectedLabelStyle: subtitle2,
        onTap: _onItemTapped,
      ),
    );
  }
}
