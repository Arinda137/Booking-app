import 'package:flutter/material.dart';
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:   IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child:ListView(
          children: [
            SizedBox(height: 15,),
            Text('Forgot your password'),
            SizedBox(height: 15,),
            Text('No worries, it happens to all of us'),
            SizedBox(height: 30,),
            TextFormField(
              keyboardType:TextInputType.phone,
              decoration: InputDecoration(
                labelText: ('Phone number'),
                hintText: ('Enter your number'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(onPressed: (){}, child: Text('Continue'))
          ],
        ),
      ),
    );
  }
}

