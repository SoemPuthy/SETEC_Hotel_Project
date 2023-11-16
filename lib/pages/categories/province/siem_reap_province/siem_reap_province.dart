import 'package:flutter/material.dart';
import 'package:hotel_project/pages/utilities/constain.dart';

class SiemReapPage extends StatelessWidget {
  const SiemReapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        toolbarHeight: 60,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Siem Reap Province'),
        centerTitle: true,
      ),
    );
  }
}
