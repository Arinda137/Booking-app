import 'package:flutter/material.dart';
import '../database_helper.dart';
import 'Doctorprofile.dart';

class Doctor extends StatefulWidget {
  @override
  _DoctorState createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  final DatabaseHelper _dbHelper = DatabaseHelper();
  List<Map<String, dynamic>> _doctors = [];

  @override
  void initState() {
    super.initState();
    _loadDoctors();
  }

  void _loadDoctors() async {
    _doctors = await _dbHelper.getDoctors();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Doctors')),
      body: ListView.builder(
        itemCount: _doctors.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_doctors[index]['name']),
            subtitle: Text(_doctors[index]['specialty']),
            trailing: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Doctorprofile(
                      doctorname: _doctors[index]['name'],
                      specialty: _doctors[index]['specialty'],
                      bio: _doctors[index]['bio'],
                      availability: _doctors[index]['availability'],
                    ),
                  ),
                );
              },
              child: Text('View Profile'),
            ),
          );
        },
      ),
    );
  }
}
