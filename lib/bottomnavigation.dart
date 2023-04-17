import 'friends_record.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'homepage.dart';
import 'friends_record.dart';
import 'groups_records.dart';
import 'friends_new.dart';

class MyNavBar extends StatelessWidget {
  MyNavBar({this.link});

  final Widget link;

  @override
  Widget build(BuildContext context) {
      return Container(
      height: 90.0, // in logical pixels
      //padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey,)),
      // Row is a horizontal, linear layout.
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(10,10,10,25),
                        child:
                        IconButton(
                          icon:Icon(
                            Icons.person,
                            size: 70.0,
                            
                          ),
                          tooltip: 'Friends',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FriendsRecordPage()),
                            );
                          }
                        )
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(10,10,10,40),
                        child:
                        IconButton(
                          icon:Icon(
                            Icons.add_circle_outline,
                            size: 70.0
                          ),
                          tooltip: 'Add',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => link),
                            );
                          }
                        ) 
                      ),
                      
                      Container(
                        margin: const EdgeInsets.fromLTRB(10,10,45,20),
                        child:
                          //color: Colors.amber,
                          
                         IconButton(
                          icon:Icon(
                            Icons.people,
                            size: 70.0,
                          ),
                          tooltip: 'Groups',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => GroupsRecord()),
                            );
                          }
                        )
                      ),
                        
                      
                    ]
      )
      );
  }
}
