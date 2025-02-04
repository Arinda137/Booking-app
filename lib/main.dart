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

import'package:booking/Screens/AppointmentBookingScreen.dart';
void main(){runApp(
  MaterialApp(
    title: 'Booking',
    home:Homepage(),
    themeMode: ThemeMode.system,
    debugShowCheckedModeBanner: false,
  ),
);
}