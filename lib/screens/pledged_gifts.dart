import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PledgedGifts extends StatelessWidget {
  const PledgedGifts({super.key});
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
      const Padding(padding: const EdgeInsets.all(16.0),

      child: const Column(
        children: [
          const Text('Pledged Gifts',
            style:TextStyle(
                color:Colors.black,
            fontSize: 35.0) ,),
          const Text('This Week',
            style:TextStyle(
                color:Colors.black,
                fontSize: 30.0) ,),
          const Text('HURRY UP!!',
            style:TextStyle(
                color:Colors.red,
                fontSize: 25.0) ,),
        ],
      )
      ),
    );


  }
}
