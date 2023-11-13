import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AutoSliderHomepage extends StatefulWidget {
  @override
  State<AutoSliderHomepage> createState() => _AutoSliderHomepageState();
}

class _AutoSliderHomepageState extends State<AutoSliderHomepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      height: 200,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CarouselSlider(
            items: [
              Image.asset('assets/img/h2.jpg'),
              Image.asset('assets/img/h3.jpg'),
              Image.asset('assets/img/h4.jpg'),
              Image.asset('assets/img/h5.jpg'),
            ],
            options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
            ),
          ),
        ],
      ),
    );
  }
}
