import 'package:flutter/material.dart';
import 'package:hotel_project/main_page.dart';
import 'package:hotel_project/pages/button_page/button_page.dart';
import 'package:hotel_project/pages/home_page/home_page.dart';
import 'package:hotel_project/pages/signup_page/signup_page.dart';
import 'package:hotel_project/pages/utilities/constain.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Container(
                // color: Colors.red,
                alignment: Alignment.centerLeft,
                height: 120,
                child: Image.asset('assets/img/logo.png'),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              // color: Colors.teal,
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 35,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Please login to continue.',
                    style: TextStyle(color: Colors.black45, fontSize: 17),
                  )
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              // color: Colors.green,
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 30,
              child: const Text(
                'Email',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              // color: Colors.orange,
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 60,
              child: TextFormField(
                onTap: () {},
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  labelText: 'Enter your email',
                  hintText: 'sample@gmail.com',
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              // color: Colors.green,
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 30,
              child: const Text(
                'Password',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              // color: Colors.orange,
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 60,
              child: TextFormField(
                onTap: () {},
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  prefixIcon: const Icon(Icons.password),
                  labelText: 'Enter your password',
                ),
              ),
            ),
            Container(
              // color: Colors.red,
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 35,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(color: primaryColor),
                      ))
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              // color: Colors.cyan,
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                style: buttonEmailLoginpage,
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainPage(),
                      ));
                },
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 30,
              child: const Text('Or sign in with'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/img/google.png'),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  height: 60,
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/img/fb.png'),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  height: 60,
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/img/twitter.png'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Dont\'s have an account?'),
                  TextButton(
                    child: const Text(
                      'Sign up',
                      style: TextStyle(color: primaryColor),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPage()));
                    },
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
