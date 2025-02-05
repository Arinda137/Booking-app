import 'package:flutter/material.dart';

class AppointmentBookingScreen extends StatefulWidget {
  @override
  _AppointmentBookingScreenState createState() =>
      _AppointmentBookingScreenState();
}

class _AppointmentBookingScreenState extends State<AppointmentBookingScreen> {
  DateTime? _selectedDate;
  String? _selectedDoctor;

  final List<String> _doctors = [
    'Dr. Jordan Arinda',
    'Dr. Jane Smith',
    'Dr. Mukundane Mark'
  ];

  void _pickDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 1),
    );

    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  void _bookAppointment() {
    if (_selectedDoctor != null && _selectedDate != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Appointment booked successfully!')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please select a doctor and date')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Book Appointment')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _pickDate,
              child: Text(_selectedDate == null
                  ? 'Pick Date'
                  : 'Selected: ${_selectedDate!.toLocal()}'.split(' ')[0]),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _bookAppointment,
              child: Text('Book Appointment'),
            ),
          ],
        ),
      ),
    );
  }
}
