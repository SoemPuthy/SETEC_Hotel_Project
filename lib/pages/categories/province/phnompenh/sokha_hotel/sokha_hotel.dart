import 'package:flutter/material.dart';
import 'package:hotel_project/pages/utilities/constain.dart';

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
          ],
        ),
      ),
    );
  }
}
