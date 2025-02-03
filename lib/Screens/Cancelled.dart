import'package:flutter/material.dart';
class Cancelled extends StatefulWidget {
  const Cancelled({super.key});

  @override
  State<Cancelled> createState() => _CancelledState();
}

class _CancelledState extends State<Cancelled> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 230,
              height: 230,
              child:
              Image(image: AssetImage('Assets/images/Cancelled.jpg')),
            ),
          ),

          SizedBox(height: 100,),
          Text('No past bookings yet')
        ],
      ),
    );
  }
}

