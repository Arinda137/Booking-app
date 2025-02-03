import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                Text('Signup',style: TextStyle(fontSize: 30)),
               SizedBox(height: 100),
                TextFormField(
                  key: const ValueKey('Name'),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r"^[a-zA-Z]+$").hasMatch(value!)) {
                      return 'Enter valid Name';
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: 'Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                SizedBox(height: 15),
                TextFormField(
                  key: const ValueKey('Phone Number'),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)')
                            .hasMatch(value!)) {
                      return 'Enter valid Phone Number';
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      labelText: 'Phone number',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                SizedBox(height: 15),
                TextFormField(
                  key: const ValueKey('Password'),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                            .hasMatch(value!)) {
                      return 'Enter valid Password';
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: Icon(Icons.visibility_off),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  key: const ValueKey('Confirm Password'),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                            .hasMatch(value!)) {
                      return 'Enter valid Password';
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                SizedBox(
                  height: 25,
                ),
                OutlinedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                                'Account created successfully!, you can now log in'),
                          ),
                        );
                      }
                      ;
                    },
                    child: Text('Create Account'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}