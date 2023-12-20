import 'package:flutter/material.dart';
import 'package:code/widgets/navbar_roots.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Details'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Doctor's Photp and Details
            _buildDoctorDetails(),

            //Appointment Section
            SizedBox(height: 20.0),
            _buildAppointmentSection(),

            //Calender Section
            SizedBox(height: 20.0),
            _buildCalenderSection(),

            //Time Selection Section
            SizedBox(height: 20.0),
            _buildTimeSelectionSection(),

            //Appointment Button
            SizedBox(height: 20.0),
            _buildMakeAppointmentButton(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        onTap: (index) {
          //handle navigation to other pages here
        },
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
        ],
      ),
    );
  }

  Widget _buildDoctorDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 80.0,
          backgroundImage: AssetImage('assets/img1.jpg'),
        ),
        SizedBox(height: 16.0),
        Text(
          'Dr. John Doe',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Specialty: Cardiologist\nExperience: 10 years',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildAppointmentSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Appointment',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            Text('Months'),
            SizedBox(width: 8.0),
            Text('<November>'),
          ],
        ),
      ],
    );
  }

  Widget _buildCalenderSection() {
    //show a simple row of days(sun,mon,etc.)
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildDay('Sun'),
        _buildDay('Mon'),
        _buildDay('Tue'),
        _buildDay('Wed'),
        _buildDay('Thu'),
        _buildDay('Fri'),
        _buildDay('Sat'),
      ],
    );
  }

  Widget _buildDay(String day) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Text(day),
    );
  }

  Widget _buildTimeSelectionSection() {
    // simple dropdown time selection
    List<String> times = [
      '8 am',
      '9 am',
      '10 am',
      '11 am',
      '12 am',
      '1 pm',
      '2 pm',
      '3 pm',
      '4 pm',
      '5 pm',
    ];

    return DropdownButton<String>(
      value: times[0], //initial value
      onChanged: (newValue) {
        //Handle Time Selection
      },
      items: times.map<DropdownMenuItem<String>>((String time) {
        return DropdownMenuItem<String>(
          value: time,
          child: Text(time),
        );
      }).toList(),
    );
  }

  Widget _buildMakeAppointmentButton() {
    return ElevatedButton(
      onPressed: () {
//handle "make appointment button"
      },
      child: Text('Make Appointment'),
    );
  }
}
