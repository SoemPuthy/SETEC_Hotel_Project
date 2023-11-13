import 'package:flutter/material.dart';
import 'package:hotel_project/pages/home_page/list_view.dart';
import 'package:hotel_project/pages/sidebar_page/sidebar_page.dart';
import 'package:flutter/material.dart';
import 'package:hotel_project/pages/slider_home_page/auto_slider.dart';
import 'package:hotel_project/pages/splash_page/splash_page.dart';
import 'package:hotel_project/pages/utilities/constain.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // color: Colors.teal,
              margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Gold Member',
                        style: TextStyle(
                            color: Colors.amber, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Soem Puthy',
                        style: TextStyle(
                            color: secondaryColor,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SplashPage()));
                    },
                    child: const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/img/profile.png'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              // color: Colors.green,
              height: 50,
              margin: const EdgeInsets.only(right: 20, left: 20),
              child: TextFormField(
                onTap: () {},
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'location',
                  labelText: 'Search your favorite hotel',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            AutoSliderHomepage(),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Hotel Location',
                    style: TextStyle(
                        color: secondaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(color: secondaryColor),
                    ),
                  )
                ],
              ),
            ),
            ListViewPage(),
          ],
        ),
      ),
    );
  }
}
