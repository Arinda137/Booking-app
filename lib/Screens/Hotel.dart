import 'package:flutter/material.dart';

class Hotel extends StatefulWidget {
  const Hotel({super.key});

  @override
  State<Hotel> createState() => _HotelState();
}

class _HotelState extends State<Hotel> {
  DateTime? _selectedDate;
  final TextEditingController _hotelController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('Assets/images/hotel.jpg'),
    fit: BoxFit.cover,
    ),
    )
      )
      // Stack(
      //   children: <Widget>[
      //     // Background Image
      //     Positioned.fill(
      //       child: Image.asset(
      //         'Assets/images/hotel.jpg',
      //         fit: BoxFit.cover,
      //       ),
      //     ),
      //     // Content in front of the image
      //     SingleChildScrollView(
      //       padding: const EdgeInsets.all(16.0),
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           // Favorite Hotel TextField
      //           Container(
      //             width: double.infinity, // Ensures it takes the full width
      //             child: TextFormField(
      //               controller: _hotelController,
      //               decoration: InputDecoration(
      //                 labelText: 'Favorite Hotel',
      //                 hintText: 'Enter your favorite hotel',
      //                 suffixIcon: IconButton(
      //                   icon: Icon(Icons.hotel),
      //                   onPressed: () {
      //                     // Handle the icon button press
      //                   },
      //                 ),
      //               ),
      //             ),
      //           ),
      //           SizedBox(height: 30),
      //           // Check-in Date TextField
      //           Container(
      //             width: double.infinity, // Ensures it takes the full width
      //             child: TextFormField(
      //               decoration: InputDecoration(
      //                 labelText: 'Check-in Date',
      //                 hintText: 'Select check-in date',
      //                 suffixIcon: IconButton(
      //                   icon: Icon(Icons.calendar_today),
      //                   onPressed: () async {
      //                     DateTime? pickedDate = await showDatePicker(
      //                       context: context,
      //                       initialDate: DateTime.now(),
      //                       firstDate: DateTime.now(),
      //                       lastDate: DateTime(2101),
      //                     );
      //                     if (pickedDate != null) {
      //                       setState(() {
      //                         _selectedDate = pickedDate;
      //                       });
      //                     }
      //                   },
      //                 ),
      //               ),
      //               controller: TextEditingController(
      //                 text: _selectedDate != null ? _selectedDate!.toLocal().toString().split(' ')[0] : '',
      //               ),
      //               readOnly: true,
      //             ),
      //           ),
      //           SizedBox(height: 30),
      //           // Rooms & Guests TextField
      //           Container(
      //             width: double.infinity, // Ensures it takes the full width
      //             child: TextFormField(
      //               decoration: InputDecoration(
      //                 labelText: 'Rooms & Guests',
      //                 hintText: 'Select rooms and guests',
      //                 suffixIcon: IconButton(
      //                   icon: Icon(Icons.person),
      //                   onPressed: () {
      //                     // Handle the icon button press
      //                   },
      //                 ),
      //               ),
      //               readOnly: true,
      //               controller: TextEditingController(text: 'Rooms: 1, Guests: 1'), // Example default text
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
