import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hediaty/models/friend.dart';
import 'package:hediaty/widgets/nav_bar.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0, // Change elevation to 0 for a flat look
        title: const Text(
          'Hediaty',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black, // Make sure text color contrasts the background
          ),
        ),
       actions: <Widget>[
         IconButton(
             tooltip:'Add Friend',
             onPressed: null,
             icon: Icon(Icons.group_add,color: Colors.black54,)
         )
       ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // dummy search bar
            Material(
              elevation: 5,
              shadowColor: const Color(0XFF000000),
              borderRadius: BorderRadius.circular(20.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: const TextStyle(color: Colors.black54),
                  prefixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.search,
                        color: Colors.black54,
                      ),
                      const SizedBox(width: 8),
                      Container(
                        height: 24, // Adjust height to match the TextField
                        width: 2, // Width of the divider
                        color: Colors.black54, // Divider color
                      ),
                      const SizedBox(width: 8), // Add space after the divider
                    ],
                  ),
                  suffixIcon: Icon(Icons.mic, color: Colors.black54,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none, // Optional: no visible border
                  ),
                  filled: true, // Ensure the background color is visible
                  fillColor: Colors.white, // Set the background color of the TextField
                ),
                onChanged: (value) {
                  // Logic for searching to be implemented
                },
              ),
            ),
           //box for spacing
           SizedBox(height: 20,),
           //title and list
            Container(
             padding: const EdgeInsets.all(16.0),
             //content
             child: Row(

               children: [
                 Text('Upcoming Events!',
                 style: TextStyle(color: Colors.black,
                 fontSize: 35),),
                 SizedBox(width: 10.0),
                 Icon(Icons.event_outlined),



               ],
             ),



              //missing list to be implemented

           ),
        ListView.builder(
          padding: const EdgeInsets.all(6),
          
          itemCount: friendList.length,
          shrinkWrap: true,
          //scrollDirection: ,

        //physics: NeverScrollableScrollPhysics(),
          itemBuilder: (contextg, index) {
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




        ]),


      ),
    //fab
    floatingActionButton:FloatingActionButton(onPressed: null,
    backgroundColor: Colors.lightGreenAccent,
    tooltip: 'Add Event',
        child: Row(

      children: [
        Icon(Icons.add, size: 15,),
        Icon(Icons.event_outlined,color: Colors.black,size: 30,),
      ],
    )) ,

      //navbar

      //navigation bar
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.white,
      //   iconSize: 35,
      //   selectedItemColor: Colors.black,
      //   unselectedItemColor: Colors.black54,
      //   type: BottomNavigationBarType.fixed, // Use fixed type for equal spacing
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(CupertinoIcons.gift),
      //       label: 'Pledged Gifts',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.people),
      //       label: 'Friends',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.event),
      //       label: 'Event List',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(CupertinoIcons.profile_circled),
      //       label: 'Profile',
      //     ),
      //
      //   ],
      // ),

    );
  }
}
