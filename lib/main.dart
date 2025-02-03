import 'package:booking/Screens/Active.dart';
import 'package:booking/Screens/AppointmentBookingScreen.dart';
import 'package:booking/Screens/Booking.dart';
import 'package:booking/Screens/Cancelled.dart';
import 'package:booking/Screens/Homepage.dart';
import 'package:booking/Screens/Hospital.dart';
import 'package:booking/Screens/Login.dart';
import 'package:booking/Screens/Notifications.dart';
import 'package:booking/Screens/Past.dart';
import 'package:booking/Screens/Saved.dart';
import 'package:booking/Screens/Settings.dart';
import 'package:booking/Screens/Signup.dart';
import'package:flutter/material.dart';
import'package:booking/Screens/Doctor.dart';
import 'database_helper.dart'; 
import'package:booking/Screens/AppointmentBookingScreen.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure that widget binding is initialized
  await DatabaseHelper().database; // Initialize the database
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Booking',
      home: Login(), // Replace with your initial screen
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}