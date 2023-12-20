import 'package:flutter/material.dart';
import '../widgets/navbar_roots.dart';
import 'signin.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   Align(
      //         alignment: Alignment.centerRight,
      //         child: TextButton(
      //           onPressed: () {
      //             Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                   builder: (context) => NavBarRoots(),
      //                 ));
      //           },
      //           child: Text(
      //             "SKIP",
      //             style: TextStyle(
      //               color: Color(0xFF7165D6),
      //               fontSize: 20,
      //             ),
      //           ),
      //         ),
      //       ),
      //   // title: Text('Skip'),
      //   // centerTitle: true,
      // ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            //full Name
            Text("Full Name"),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter your name",
                suffixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 20.0),

            //phone Number
            Text("Mobile Number"),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter your mobile number",
                suffixIcon: Icon(Icons.phone),
              ),
            ),
            SizedBox(height: 20.0),

            Text("Email"),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter your Email",
                suffixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 20.0),

            Text("Password"),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter your password",
                suffixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 20.0),

            //sign Up Button
            ElevatedButton(
              onPressed: () {
                //button's onPressed
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const NavBarRoots();
                    },
                  ),
                );
              },
              child: Text(
                "Sign Up",
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

            SizedBox(height: 20.0),
            //if you have an account, sign in
            GestureDetector(
              onTap: () {
                // navigate to sign in
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return SignInPage();
                    },
                  ),
                );
              },
              child: Text(
                "If you have an account, Sign In !",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
