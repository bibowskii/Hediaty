import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hediaty/screens/home.dart';
import 'package:hediaty/screens/pledged_gifts.dart';
import 'package:hediaty/screens/ProfilePage.dart';
import 'package:hediaty/screens/FriendsPage.dart';
import 'package:hediaty/screens/EventListPage.dart';
import 'package:hediaty/models/friend.dart';

class friendListView extends StatelessWidget {
  const friendListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),

        child:  Column(
          children: [
            const Text('Friends List',
              style:TextStyle(
                  color:Colors.black,
                  fontSize: 35.0) ,),

            ListView.builder(
              padding: const EdgeInsets.all(6),

              itemCount: friendList.length,
              shrinkWrap: true,
              //scrollDirection: ,

              //physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                    title: Container(
                        decoration: BoxDecoration(
                          color: Colors.white, // Background color
                          borderRadius: BorderRadius.circular(8.0), // Rounded corners
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 4.0, // Softness of the shadow
                              offset: Offset(0, 2), // Shadow position
                            ),
                          ],
                        ),

                        padding: EdgeInsets.all(14),
                        child: Row(
                          children: [
                            Icon(CupertinoIcons.profile_circled),
                            SizedBox(width: 8),
                            Text(friendList[index]),
                          ],
                        ))
                );},
            )

          ],


        ),




      ),



    );


  }

}
