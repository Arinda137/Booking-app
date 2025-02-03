import 'package:flutter/material.dart';
import '../database_helper.dart';

class AppointmentBookingScreen extends StatefulWidget {
  @override
  _AppointmentBookingScreenState createState() => _AppointmentBookingScreenState();
}

class _AppointmentBookingScreenState extends State<AppointmentBookingScreen> {
  final DatabaseHelper _dbHelper = DatabaseHelper();
  DateTime? _selectedDate;
  String? _selectedDoctor;

  final List<String> _doctors = [
    'Dr. Jordan Arinda',
    'Dr. Jane Smith',
    'Dr. Mukundane Mark'
  ];

  void _bookAppointment() async {
    if (_selectedDoctor != null && _selectedDate != null) {
      await _dbHelper.insertAppointment({
        'user_id': 1, // Replace with actual user ID
        'doctor_id': 1, // Replace with actual doctor ID
        'date': _selectedDate!.toIso8601String(),
        'time': '10:00 AM', // Replace with actual time
        'status': 'Booked',
      });
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Appointment booked successfully!')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Book Appointment')),
      body: Center(
        child: Column(
          children: [
            DropdownButton<String>(
              hint: Text('Select Doctor'),
              value: _selectedDoctor,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedDoctor = newValue;
                });
              },
              items: _doctors.map<DropdownMenuItem<String>>((String doctor) {
                return DropdownMenuItem<String>(
                  value: doctor,
                  child: Text(doctor),
                );
              }).toList(),
            ),
            ElevatedButton(onPressed: _bookAppointment, child: Text('Book Appointment')),
          ],
        ),
      ),
    );
  }
}
