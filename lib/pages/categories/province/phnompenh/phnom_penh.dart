import 'package:flutter/material.dart';
import 'package:hotel_project/pages/utilities/constain.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PhnomPenhPage extends StatefulWidget {
  const PhnomPenhPage({Key? key}) : super(key: key);

  @override
  State<PhnomPenhPage> createState() => _PhnomPenhPageState();
}

class _PhnomPenhPageState extends State<PhnomPenhPage> {
  set rating(double rating) {}

  @override
  Widget build(BuildContext context) {
    double rating = 0;
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        toolbarHeight: 60,
        centerTitle: true,
        backgroundColor: primaryColor,
        title: const Text('Phnom Penh'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
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
                                updateOnDrag: false,
                                allowHalfRating: true,
                                itemSize: 20,
                                maxRating: 5,
                                onRatingUpdate: (rating) {
                                  setState(() {
                                    this.rating = rating;
                                  });
                                },
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: secondaryColor,
                                ),
                              ),
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
