import 'package:flutter/material.dart';
import 'doctors_list.dart';

class DiseaseChecker extends StatelessWidget {
  const DiseaseChecker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AI Disease Checker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AIPage(),
    );
  }
}

class AIPage extends StatefulWidget {
  @override
  _AIPageState createState() => _AIPageState();
}

class _AIPageState extends State<AIPage> {
  TextEditingController _symptomsController = TextEditingController();
  List<String> _predictedDiseases = [];
  bool _showAppointmentButton = false;

  void _checkDisease() {
    //Replace this with the actual logic to query the machine learning
    //for simplicity a placeholder is used here
    setState(() {
      _predictedDiseases = ['Flu', 'Common Cold', 'Allergies'];
      _showAppointmentButton = true;
    });
  }

  void _contactDoctor() {
    //replace it with the logic to navigate to doctor/contact
    print('Contacting doctor/ book appointment logic goes here');
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DoctorList()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AI Disease Checker'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //symmptom Input
            TextField(
              controller: _symptomsController,
              decoration: InputDecoration(
                labelText: 'Enter Symptoms(comma-separated)',
              ),
            ),
            SizedBox(height: 16.0),

            //Check Disease Button
            ElevatedButton(
              onPressed: _checkDisease,
              child: Text('Check Disease'),
            ),
            SizedBox(height: 16.0),

            //Predicted Diseases
            if (_predictedDiseases.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Predicted Diseases:',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  for (String disease in _predictedDiseases) Text('- $disease'),
                  SizedBox(height: 16.0),

                  //contact a Doctor Button
                  if (_showAppointmentButton)
                    ElevatedButton(
                      onPressed: _contactDoctor,
                      child: Text('Contact a Doctor/Book an Appointment'),
                    ),
                ],
              ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 2,
      //   onTap: (index) {
      //     //Handle naigation to other pages here
      //   },
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.calendar_today),
      //       label: 'Appointment',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.local_pharmacy),
      //       label: 'Medicine',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.healing),
      //       label: 'Health Checker',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
    );
  }
}
