import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hotel_project/pages/utilities/constain.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PhnomPenhPage extends StatefulWidget {
  const PhnomPenhPage({Key? key}) : super(key: key);

  @override
  State<PhnomPenhPage> createState() => _PhnomPenhPageState();
}

class _PhnomPenhPageState extends State<PhnomPenhPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        toolbarHeight: 60,
        centerTitle: true,
        backgroundColor: primaryColor,
        title: const Text(
          'Phnom Penh',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/img/profile.png'),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Hotel Sokha',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          Row(
                            children: [
                              const Text('Five Stars'),
                              RatingBar.builder(
                                itemSize: 20,
                                initialRating: 5,
                                minRating: 5,
                                maxRating: 5,
                                direction: Axis.horizontal,
                                allowHalfRating: false,
                                itemCount: 5,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 5,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    // color: Colors.teal,
                    child: GestureDetector(
                      onTap: () {},
                      child: Card(
                        borderOnForeground: false,
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                        elevation: 3,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: Image.asset(
                            'assets/img/hotelsokha.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                ],
              ),
              const Divider(),
              Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/img/profile.png'),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Rosewood Hotel',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          Row(
                            children: [
                              const Text('Five Stars'),
                              RatingBar.builder(
                                itemSize: 20,
                                initialRating: 5,
                                minRating: 5,
                                maxRating: 5,
                                direction: Axis.horizontal,
                                allowHalfRating: false,
                                itemCount: 5,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 5,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    // color: Colors.teal,
                    child: GestureDetector(
                      onTap: () {},
                      child: Card(
                        borderOnForeground: false,
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                        elevation: 3,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: Image.asset(
                            'assets/img/rosewood.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                ],
              ),
              const Divider(),
              Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/img/profile.png'),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Hyatt Regency Phnom Penh',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          Row(
                            children: [
                              const Text('Five Stars'),
                              RatingBar.builder(
                                itemSize: 20,
                                initialRating: 5,
                                minRating: 5,
                                maxRating: 5,
                                direction: Axis.horizontal,
                                allowHalfRating: false,
                                itemCount: 5,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 5,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    // color: Colors.teal,
                    child: GestureDetector(
                      onTap: () {},
                      child: Card(
                        borderOnForeground: false,
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                        elevation: 3,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: Image.asset(
                            'assets/img/rosewood.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                ],
              ),
              Divider(),
              Column(
                children: [
                  Row(),
                  Container(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
