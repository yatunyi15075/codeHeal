import 'package:flutter/material.dart';
import 'signup.dart';

class MyOnboarding extends StatefulWidget {
  const MyOnboarding({super.key});

  @override
  State<MyOnboarding> createState() => _MyOnboardingState();
}

class _MyOnboardingState extends State<MyOnboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background Image
          Image.asset(
            'assets/img1.jpg', // Replace with your background image asset path
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          // Text and Elevated button on top of the image

          Positioned(
            bottom: 0, // Position at the bottom
            left: 0, // Align to the left edge
            right: 0, // Align to the right edge
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Connect With Doctors More Easily",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 20.0), // Add bottom padding here
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Add your button's onPressed action here
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const SignUpPage();
                          },
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    ),
                    label: Text(
                      "Skip",
                      style: TextStyle(
                        color: Colors.black, // Text color (black)
                        fontWeight: FontWeight.bold, // Bold text
                        fontSize: 18.0, // Font size 18 pixels
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.yellow,
                      elevation: 6.0, // Elevation of the button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      minimumSize: Size(100, 50),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
