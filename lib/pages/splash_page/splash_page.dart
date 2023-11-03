import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_project/main_page.dart';
import 'package:hotel_project/pages/home_page/home_page.dart';
import 'package:hotel_project/pages/signin_page/sign_in_page.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushReplacement(
          CupertinoPageRoute(builder: (context) => const SignInPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // ignore: avoid_unnecessary_containers
            const SizedBox(height: 5),
            Container(
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/img/logo.png',
                      width: 250,
                      height: 250,
                    ),
                  ),
                  Center(
                    child: Text(
                      'វិទ្យាស្ថានសុីតិក',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          color: Colors.green.shade800),
                    ),
                  ),
                  Center(
                    child: Text(
                      'SETEC INSTITUTE',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.green.shade800),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Tel: 023 880 612 /	010 880 612'),
                  Text('www.setecu.com'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
