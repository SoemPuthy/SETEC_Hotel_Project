import 'dart:io';

import 'package:flutter/material.dart';

class SideBarPage extends StatelessWidget {
  const SideBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/img/profile.png'),
              ),
            ),
            accountName: const Text('SoemPuthy'),
            accountEmail: const Text('puthysoem66@gmail.com'),
            onDetailsPressed: () {},
            arrowColor: Colors.white,
            decoration: BoxDecoration(
              color: Colors.green.shade700,
            ),
          ),
          ListTile(
            onTap: () {},
            // tileColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            leading: const Icon(
              Icons.favorite_rounded,
              color: Colors.black54,
            ),
            title: const Text(
              'Favorite',
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
          ),
          ListTile(
            onTap: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            leading: const Icon(
              Icons.people,
              color: Colors.black54,
            ),
            title: const Text(
              'Friends',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ),
          ListTile(
            onTap: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            leading: const Icon(Icons.share, color: Colors.black54),
            title: const Text(
              'Share',
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
          ),
          ListTile(
            onTap: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: const Text(
              'Request',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
            leading:
                const Icon(Icons.notifications_outlined, color: Colors.black54),
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                height: 25,
                width: 25,
                child: const Center(
                  child: Text(
                    '9',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            onTap: () {
              exit(0);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            leading: const Icon(Icons.exit_to_app_sharp, color: Colors.black54),
            title: const Text(
              'Exit',
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
