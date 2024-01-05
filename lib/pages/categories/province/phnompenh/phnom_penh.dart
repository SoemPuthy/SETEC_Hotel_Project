import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hotel_project/pages/button_page/button_page.dart';
import 'package:hotel_project/pages/categories/province/phnompenh/sokha_hotel/sokha_hotel.dart';
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
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
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
      backgroundColor: Colors.white.withOpacity(0.9),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              Container(
                height: 130,
                width: double.infinity,
                child: GestureDetector(
                  onTap: () {},
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 2,
                    color: Colors.white,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(19),
                            child: Image.asset(
                              'assets/img/pph/3.jpg',
                              height: 100,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5),
                            Text(
                              'Deluxe Room',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 14),
                            ),
                            Text(
                              '\$79.00',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: secondaryColor,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '\$90.00',
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough),
                                ),
                                SizedBox(width: 5),
                                Text('/Night')
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: 14),
                                Icon(Icons.star, color: Colors.amber, size: 14),
                                Icon(Icons.star, color: Colors.amber, size: 14),
                                Icon(Icons.star, color: Colors.amber, size: 14),
                                // ... add more stars as needed
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              '(4,245 Reviews)',
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(
                              'Middle phnom penh city',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          style: buttonBooking,
                          onPressed: () {},
                          child: const Icon(
                            Icons.import_contacts_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Colors.black12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
