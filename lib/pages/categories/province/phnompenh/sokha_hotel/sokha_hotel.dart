import 'package:flutter/material.dart';
import 'package:hotel_project/pages/utilities/constain.dart';
import 'package:url_launcher/url_launcher.dart';

class SokhaHotelPage extends StatelessWidget {
  const SokhaHotelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Sokha Hotel',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 200,
                  width: double.infinity,
                  child: GestureDetector(
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/img/sokhahotel/1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: const Text(
                      'Strategically located, Sokha Phnom Penh Residence offers luxurious and elegant accommodation in central Phnom Penh.'),
                ),
                const SizedBox(height: 40),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.blue,
                          ),
                          Text(
                            'Street Keo Chenda, Sangkat Chroy Changvar, Phnom Penh, Cambodia',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'View Google map',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 12),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
