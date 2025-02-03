import 'package:flutter/material.dart';
class Saved extends StatefulWidget {
  const Saved({super.key});

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved'),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.notifications))
        ],
        flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white10, Colors.blueAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            )
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(height: 150,),
              Text('Save what you like for later'),
              SizedBox(height: 250),
              Text('Create lists of your favorite properties to help '
                  'you share, compare, and book'),
              SizedBox(height: 50,),
              ElevatedButton(onPressed: (){}, child:Text('Start your search'))
            ],
          ),
        ),
      ),
    );
  }
}
