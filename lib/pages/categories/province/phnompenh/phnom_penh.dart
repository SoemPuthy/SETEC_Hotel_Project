import 'package:flutter/material.dart';
import 'package:hotel_project/pages/utilities/constain.dart';

class PhnomPenhPage extends StatelessWidget {
  const PhnomPenhPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 200,
              color: Colors.teal,
              child: Column(
                children: [
                  Card(
                    color: primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(22.0),
                      child: Image.asset('assets/img/hotelsokha.jpg'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
