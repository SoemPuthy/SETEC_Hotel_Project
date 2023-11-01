import 'package:flutter/material.dart';
import 'package:hotel_project/pages/favorite_page/favorite_page.dart';
import 'package:hotel_project/pages/home_page/home_page.dart';
import 'package:hotel_project/pages/location_page/location_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  var _selectindex = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectindex,
        children: const [
          HomePage(),
          FavoritePage(),
          LocationPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectindex,
        onTap: (mytap) {
          setState(() {
            _selectindex = mytap;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline_rounded),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            label: 'Location',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
