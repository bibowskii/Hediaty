import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';






class EventListScreen extends StatelessWidget {
  const EventListScreen ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Hediaty',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
      body:
      Padding(padding: const EdgeInsets.all(16.0),

          child: const Column(
            children: [
              const Text('Event List',
                style:TextStyle(
                    color:Colors.black,
                    fontSize: 35.0) ,),


            ],
          ),


      ),


    );


  }
}
