import 'package:flutter/material.dart';
import 'package:hotel_project/pages/sidebar_page/sidebar_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBarPage(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green.shade700,
        title: const Text('SETEC Institute Hotel'),
        toolbarHeight: 60,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined)),
        ],
      ),
    );
  }
}
