import 'package:flutter/material.dart';
class Attractions extends StatefulWidget {
  const Attractions({super.key});

  @override
  State<Attractions> createState() => _AttractionsState();
}

class _AttractionsState extends State<Attractions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('Assets/images/Venue.jpg'),
                fit: BoxFit.cover,
              ),
            )
        )
    );
  }
}
