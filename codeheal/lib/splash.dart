import 'package:flutter/material.dart';
import 'onboarding.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => MyOnboarding(
            // title: 'Home',
            ),
      ),
    );
  }

  final Color customBackgroundColor = Color.fromARGB(255, 250, 249, 249);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          customBackgroundColor, // Set your desired background color
      body: Center(
        child: Image.asset('assets/logo.png', width: 300.0, height: 300.0),
      ),
    );
  }
}
