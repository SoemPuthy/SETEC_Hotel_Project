import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ListViewPage extends StatefulWidget {
  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      height: 170,
      width: double.infinity,
      child: ListView(
        padding: const EdgeInsets.only(right: 20),
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            child: CarouselSlider(
              items: [],
              options: CarouselOptions(
                height: 300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
