import 'package:flutter/material.dart';
class Active extends StatefulWidget {
  const Active({super.key});

  @override
  State<Active> createState() => _ActiveState();
}

class _ActiveState extends State<Active> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 230,
              height: 230,
              child:
                Image(image: AssetImage('Assets/images/Active.jpg')),
            ),
          ),

          SizedBox(height: 100,),
          Text('No past bookings yet')
        ],
            ),
      );

  }
}
