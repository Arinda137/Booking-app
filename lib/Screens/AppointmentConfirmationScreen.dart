import 'package:booking/Screens/Homepage.dart';
import 'package:flutter/material.dart';
import 'Doctor.dart';
class AppointmentConfirmationScreen extends StatelessWidget {
  final String doctorName;
  final DateTime appointmentDate;
  final TimeOfDay appointmentTime;

  AppointmentConfirmationScreen({
    required this.doctorName,
    required this.appointmentDate,
    required this.appointmentTime,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Appointment Confirmation')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Appointment Confirmed!',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Doctor: $doctorName',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10),
            Text(
              'Date: ${appointmentDate.toString().split(' ')[0]}',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10),
            Text(
              'Time: ${appointmentTime.format(context)}',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context) => Homepage(),));
                },
                child: Text('Back to Home'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
