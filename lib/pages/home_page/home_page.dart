import 'package:flutter/material.dart';
import 'package:hotel_project/pages/home_page/list_view.dart';
import 'package:hotel_project/pages/sidebar_page/sidebar_page.dart';
import 'package:flutter/material.dart';

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
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Gold Member',
                        style: TextStyle(
                            color: Colors.green.shade400,
                            fontWeight: FontWeight.w700),
                      ),
                      const Text(
                        'Soem Puthy',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const CircleAvatar(
                      radius: 30,
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
            const ListViewPage(),
          ],
        ),
      ),
    );
  }
}
