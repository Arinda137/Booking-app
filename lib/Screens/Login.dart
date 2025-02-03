import 'package:booking/Screens/ForgotPassword.dart';
import 'package:booking/Screens/Homepage.dart'; // Make sure Homepage is imported
import 'package:booking/Screens/Profile.dart';
import 'package:booking/Screens/Signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import '../database_helper.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final DatabaseHelper _dbHelper = DatabaseHelper();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() async {
    List<Map<String, dynamic>> users = await _dbHelper.getUsers();
    bool userExists = users.any((user) => user['email'] == _emailController.text && user['password'] == _passwordController.text);
    
    if (userExists) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage())); // Navigate to Homepage
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Invalid credentials')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _emailController, decoration: InputDecoration(labelText: 'Email')),
            TextField(controller: _passwordController, decoration: InputDecoration(labelText: 'Password'), obscureText: true),
            ElevatedButton(onPressed: _login, child: Text('Login')),
          ],
        ),
      ),
    );
  }
}
