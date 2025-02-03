import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'Booking.dart';
import 'Hospital.dart';
import 'Hotel.dart';
import 'Venues.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'Login.dart';
import 'Login.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0; // Current tab index
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
      child:Scaffold(
      appBar: AppBar(
        // leading: IconButton(onPressed: (){
        //  Navigator.pop(context);
        // },icon: Icon(Icons.arrow_back_ios),),
        title: Text('Homepage'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
        ],
        centerTitle: true,
        flexibleSpace: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        colors: [Colors.white10, Colors.blueAccent],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    )
    ),
        bottom:
        TabBar(
            indicatorColor: Colors.white,
            indicatorWeight:5 ,
            tabs:[
              Tab(icon:Icon(Icons.local_hospital),text: ('Hospital'),),
              Tab(icon:Icon(Icons.hotel),text: ('Hotel'),),
              Tab(icon:Icon(Icons.attractions),text: ('Venues'),),
            ],
          onTap: (index) => setState(() => _currentIndex = index),
        ),
      ),
        bottomNavigationBar:BottomAppBar(
          padding: EdgeInsets.only(bottom: 1, top: 10),
          surfaceTintColor: Colors.blueGrey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                  InkWell(child: Text('Search',style: TextStyle(fontSize: 12)),onTap: (){},)
                ],
              ),

              SizedBox(width: 20,),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){},icon:Icon(Icons.favorite_border)),
                  InkWell(child: Text('Saved',style: TextStyle(fontSize: 12)),onTap: (){},)
                ],
              ),
              SizedBox(width: 20,),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){},icon: FaIcon(FontAwesomeIcons.book),),
                  InkWell(child: Text('Bookings',style: TextStyle(fontSize: 12),),
                    onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context) => Booking(),));
                    },)
                ],
              ),


            ],
          ),
        ),
        body:  IndexedStack( // Efficiently display content based on index
          index: _currentIndex,
          children: [
            Hospital(),
            Hotel(),
            Attractions(),

            // Navigate to HospitalPage
            // Add more pages for other tabs
          ],
        ),
      )
    );
  }
}

