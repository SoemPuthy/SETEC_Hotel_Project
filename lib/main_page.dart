import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_project/pages/favorite_page/favorite_page.dart';
import 'package:hotel_project/pages/home_page/home_page.dart';
import 'package:hotel_project/pages/location_page/location_page.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

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
        fixedColor: Colors.green,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectindex,
        onTap: (mytap) {
          setState(() {
            _selectindex = mytap;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.location_solid),
            label: 'Location',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
