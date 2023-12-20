import 'package:flutter/material.dart';
import 'package:code/screens/appointment_screen.dart';

class DoctorList extends StatelessWidget {
  // List symptoms = ["Temperature", "Snuffle", "Fever", "Cough", "Cold"];

  List imgs = [
    "img2.png",
    "img2.png",
    "img2.png",
    "img2.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello BOY",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      "assets/img2.png",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          spreadRadius: 4,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.blue,
                            size: 35,
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          "Client Visit",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Make an appointmnet",
                          style: TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          spreadRadius: 4,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xFFF0EEFA),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.home_filled,
                            color: Colors.blue,
                            size: 35,
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          "Home Visit",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Call the doctor home",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Choose Category? ",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
            ),

            //Category Section
            // Row(
            //   children: [
            //     Text("Category"),
            //     Spacer(),
            //     Text(
            //       "See all",
            //       style: TextStyle(
            //         color: Colors.blue,
            //       ),
            //     ),
            //     Icon(Icons.arrow_forward),
            //   ],
            // ),
            SizedBox(height: 10.0),

            //Boxes with mother, baby, checkup, eye, tooth imgs/section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildCircularBox('assets/img1.jpg', 'Mother'),
                buildCircularBox('assets/img1.jpg', 'Baby'),
                buildCircularBox('assets/img1.jpg', 'Checkup'),
                buildCircularBox('assets/img1.jpg', 'Eye'),
                buildCircularBox('assets/img1.jpg', 'Tooth'),
              ],
            ),

            // SizedBox(
            //   height: 70,
            //   child: ListView.builder(
            //     shrinkWrap: true,
            //     scrollDirection: Axis.horizontal,
            //     itemCount: symptoms.length,
            //     itemBuilder: (context, index) {
            //       return Container(
            //         margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            //         padding: EdgeInsets.symmetric(horizontal: 25),
            //         decoration: BoxDecoration(
            //           color: Color.fromARGB(255, 231, 230, 229),
            //           borderRadius: BorderRadius.circular(10),
            //           boxShadow: [
            //             BoxShadow(
            //               color: Colors.black12,
            //               blurRadius: 4,
            //               spreadRadius: 2,
            //             ),
            //           ],
            //         ),
            //         child: Center(
            //           child: Text(
            //             symptoms[index],
            //             style: TextStyle(
            //               fontSize: 16,
            //               fontWeight: FontWeight.w500,
            //               color: Colors.black54,
            //             ),
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Popular Doctors",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
            ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AppointmentScreen(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                            radius: 35,
                            backgroundImage:
                                AssetImage("assets/${imgs[index]}")),
                        Text(
                          "Dr. John Doe",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          "Therapist",
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text(
                              "4.9",
                              style: TextStyle(
                                color: Colors.black45,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCircularBox(String imagePath, String text) {
    return Column(
      children: [
        ClipOval(
          child: Image.asset(
            imagePath,
            width: 50.0,
            height: 50.0,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}






// import 'package:flutter/material.dart';

// class DoctorList extends StatelessWidget {
//   const DoctorList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//           children: [
//             Icon(Icons.more_vert),
//             SizedBox(width: 8.0),
//             Text("Doctors List"),
//             Spacer(),
//             CircleAvatar(
//               backgroundImage: AssetImage('assets/img1.jpg'),
//               radius: 20.0,
//             ),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               //Category Section
//               Row(
//                 children: [
//                   Text("Category"),
//                   Spacer(),
//                   Text(
//                     "See all",
//                     style: TextStyle(
//                       color: Colors.blue,
//                     ),
//                   ),
//                   Icon(Icons.arrow_forward),
//                 ],
//               ),
//               SizedBox(height: 10.0),

//               //Boxes with mother, baby, checkup, eye, tooth imgs/section
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   buildCircularBox('assets/img1.jpg', 'Mother'),
//                   buildCircularBox('assets/img1.jpg', 'Baby'),
//                   buildCircularBox('assets/img1.jpg', 'Checkup'),
//                   buildCircularBox('assets/img1.jpg', 'Eye'),
//                   buildCircularBox('assets/img1.jpg', 'Tooth'),
//                 ],
//               ),
//               SizedBox(height: 20.0),

//               //Available Doctors
//               Text("Available Doctors"),
//               SizedBox(height: 10.0),

//               //ScrollableSections
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     buildDoctorSection('assets/img1.jpg'),
//                     buildDoctorSection('assets/img1.jpg'),
//                     buildDoctorSection('assets/img1.jpg'),
//                     buildDoctorSection('assets/img1.jpg'),
//                     buildDoctorSection('assets/img1.jpg'),
//                     buildDoctorSection('assets/img1.jpg'),
//                     buildDoctorSection('assets/img1.jpg'),
//                     buildDoctorSection('assets/img1.jpg'),
//                     buildDoctorSection('assets/img1.jpg'),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.calendar_today),
//             label: 'Appointments',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.local_pharmacy),
//             label: 'Appointments',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.healing),
//             label: 'Health Checker',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildCircularBox(String imagePath, String text) {
//     return Column(
//       children: [
//         ClipOval(
//           child: Image.asset(
//             imagePath,
//             width: 50.0,
//             height: 50.0,
//             fit: BoxFit.cover,
//           ),
//         ),
//         SizedBox(height: 8.0),
//         Text(
//           text,
//           textAlign: TextAlign.center,
//         ),
//       ],
//     );
//   }

//   Widget buildDoctorSection(String imagePath) {
//     return Container(
//       width: 150.0,
//       height: 200.0,
//       margin: EdgeInsets.all(10.0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15.0),
//         color: Colors.blue,
//       ),
//       child: Column(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
//             child: Image.asset(
//               imagePath,
//               width: 150.0,
//               height: 100.0,
//               fit: BoxFit.cover,
//             ),
//           ),
//           SizedBox(height: 10.0),
//           //Dummy data for the second part of the section
//           Container(
//             height: 90.0,
//             color: Colors.white,
//             child: ListView.builder(
//               itemCount: 5,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text('Doctor $index'),
//                   subtitle: Text('Speciality $index'),
//                   leading: CircleAvatar(
//                     child: Icon(Icons.person),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
