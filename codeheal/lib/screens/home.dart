import 'package:flutter/material.dart';
import 'doctors_list.dart';
import 'Ambulance.dart';
import 'doctors_details.dart';
import 'settings.dart';
import 'disease_checker.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(width: 8.0),
            Text(
              "Our Services",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 110.0),
            Icon(Icons.person),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Row(
              children: [
                Icon(Icons.search),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search",
                    ),
                  ),
                ),
                Icon(Icons.camera_alt),
              ],
            ),
            SizedBox(height: 80.0),

            //Boxes
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildTappableBox("Doctor's Appointment", 'assets/img1.jpg', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DoctorList()),
                  );
                }),

                buildTappableBox("Medicine", 'assets/img1.jpg', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DoctorDetails()),
                  );
                }),

                // buildBox("Doctor's Appointment", 'assets/img1.jpg'),
                // buildBox("Medicine", 'assets/img1.jpg'),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildTappableBox("Health Checker", 'assets/img1.jpg', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DiseaseChecker()),
                  );
                }),
                buildTappableBox("Ambulance", 'assets/img1.jpg', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AmbulanceSection()),
                  );
                }),
                // buildBox("Health Checker", 'assets/img1.jpg'),
                // buildBox("Ambulance", 'assets/img1.jpg'),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Appointment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_pharmacy),
            label: 'Medicine',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.healing),
            label: 'Health Checker',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget buildTappableBox(String text, String imagePath, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: buildBox(text, imagePath),
    );
  }

  Widget buildBox(String text, String imgagePath) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.blue,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.asset(
              imgagePath,
              width: 75,
              height: 75,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8),
          Text(text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ))
        ],
      ),
    );
  }
}
