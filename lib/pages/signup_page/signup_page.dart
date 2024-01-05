import 'package:flutter/material.dart';
import 'package:hotel_project/pages/button_page/button_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 25),
            Container(
              // color: Colors.teal,
              margin: const EdgeInsets.only(left: 20, right: 20),
              alignment: Alignment.bottomLeft,
              height: 70,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close_rounded, size: 30),
              ),
            ),
            const SizedBox(height: 80),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 90,
              // color: Colors.teal,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Let\'s get start a free account',
                    style: TextStyle(fontSize: 18, color: Colors.black45),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 30,
              // color: Colors.teal,
              child: const Text(
                'Email',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 60,
              child: TextFormField(
                onTap: () {},
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  labelText: 'Enter your email to register',
                  prefixIcon: const Icon(Icons.email_outlined),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              // color: Colors.teal,
              child: ElevatedButton(
                onPressed: () {},
                style: buttonEmailSignupPage,
                child: const Text(
                  'Send code',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
