import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen ({super.key});
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

          child: const Row(
            children: [
              const Text('Profile Page',
                style:TextStyle(
                    color:Colors.black,
                    fontSize: 35.0) ,),

            ],
          )
      ),
    );


  }
}
