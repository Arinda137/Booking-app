import 'package:flutter/material.dart';
import 'Doctor.dart';

class Doctorprofile extends StatefulWidget {
  final String doctorname;
  final String specialty;
  final String bio;
  final String availability;

  const Doctorprofile({
    Key? key,
    required this.doctorname,
    required this.specialty,
    required this.bio,
    required this.availability,
  }) : super(key: key);

  @override
  State<Doctorprofile> createState() => _DoctorprofileState();
}

class _DoctorprofileState extends State<Doctorprofile> {
  void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Appointment booked successfully!'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Profile'),
      //   leading: ,
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.doctorname,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            widget.specialty,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Bio:',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            widget.bio,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Availability:',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            widget.availability,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 20),
          // Center(
          //   child: ElevatedButton(
          //     onPressed: () {
          //       showSnackBar();
          //       // You can add additional logic here for appointment booking (e.g., saving to database)
          //     },
          //     child: Text('Book Appointment'),
          //   ),
          //),
        ],
      ),
    );
  }
}
