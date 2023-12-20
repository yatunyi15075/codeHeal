import 'package:flutter/material.dart';
import 'dart:async';

class AmbulanceSection extends StatefulWidget {
  const AmbulanceSection({super.key});

  @override
  State<AmbulanceSection> createState() => _AmbulanceSectionState();
}

class _AmbulanceSectionState extends State<AmbulanceSection> {
  String _responseMessage = '';
  String _emergencyContact = '0700000022'; //Our Emergency Number
  String _userLocation = 'Unknown'; //Placeholder for user Location

  void _requestAmbulance() {
    //Simulating process of requesting an ambulance
    //You will nedd to connect to the back-end service

    //Simulate location trcking (replace this with actual)
    _trackUserLocation();

    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        _responseMessage = 'Ambulance on the way. ETA: 10 minutes';
      });
    });
  }

  void _trackUserLocation() {
    //simulating location tracking (replace with actual location)
    // for simplicity,  we're using a Timer to update the location every time

    Timer.periodic(Duration(seconds: 5), (timer) {
      //replace this logic with actual loction retrieval
      //example you can use plugins like geolocator for this purpose
      setState(() {
        _userLocation = 'Latitude: 37.7749, Longitude: -122.4194';
      });
    });
  }

  @override
  void dispose() {
    //dispose of the location tracking timer when the screen is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ambulance'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //User Information Section
            Text(
              'Emergency Contact: $_emergencyContact',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),

            // Request Ambulance Button
            ElevatedButton(
              onPressed: _requestAmbulance,
              child: Text('Request Ambulance'),
            ),
            SizedBox(height: 16.0),

            //Response Message
            Text(
              _responseMessage,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}
