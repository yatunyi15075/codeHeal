import 'package:flutter/material.dart';
import 'home.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Login Text
            Text(
              "Sign In",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),

            // Full Name
            Text("Full Name"),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter Your Full Name",
                suffixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 20.0),

            //password
            Text("Password"),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Enter your Password",
                  suffixIcon: Icon(Icons.lock)),
            ),
            SizedBox(height: 20.0),

            ElevatedButton(
              onPressed: () {
                // Add your button's onPressed action here
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const HomePage();
                    },
                  ),
                );
              },
              child: Text(
                "Sign In",
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
          ],
        ),
      ),
    );
  }
}
