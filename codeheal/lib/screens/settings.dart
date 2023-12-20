import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Person's Image, Name and Email
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage('assets/img1.jpg'),
            ),
            SizedBox(height: 16.0),
            Text(
              'John Doe',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('John@email.com'),

            //Account Setting Section
            _buildProfileSection('Account Settings', Icons.settings),
            _buildProfileSection('My Medicine', Icons.local_pharmacy),
            _buildProfileSection('Share With Friends', Icons.share),
            _buildProfileSection('Log Out', Icons.logout),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileSection(String title, IconData icon) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 16.0),
          Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
