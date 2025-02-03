import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Booking App', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text('Version: 1.0.0', style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            Text('This app allows users to book appointments with doctors at the hospital.', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
