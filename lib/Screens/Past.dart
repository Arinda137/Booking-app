import'package:flutter/material.dart';
class Past extends StatefulWidget {
  const Past({super.key});

  @override
  State<Past> createState() => _PastState();
}

class _PastState extends State<Past> {
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
               Image(image: AssetImage('Assets/images/Past.jpg')),
             ),
           ),

           SizedBox(height: 100,),
           Text('No past bookings yet')
         ],
       ),
    );
  }
}
