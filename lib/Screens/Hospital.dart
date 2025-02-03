import 'package:flutter/material.dart';
import 'AppointmentBookingScreen.dart';

class Hospital extends StatefulWidget {
  @override
  State<Hospital> createState() => _HospitalState();
}

class _HospitalState extends State<Hospital> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hospital')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AppointmentBookingScreen()));
          },
          child: Text('Book Appointment'),
        ),
      ),
    );
  }
}
