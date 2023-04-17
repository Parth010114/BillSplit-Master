import 'package:Billsplit/login_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'homepage.dart';
import 'sign_in.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  // Fields in a Widget subclass are always marked "final".

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: HexColor('#4682B4')),
      
      // Row is a horizontal, linear layout.
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(child: 
          Transform.scale(
            scale: 7.0,
            child: 
            IconButton(
              icon: new Image.asset('assets/logo.png'),
              padding: new EdgeInsets.all(20),
              tooltip: 'Returns to home screen',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              }, // null disables the button
            ),
          ),
          ),
          Spacer(),
          Center(child: title, ), 
          Spacer(),
          Transform.scale(
            scale: 2.0,
            child:
          IconButton(
                          icon: new Image.asset('assets/log-out.png'),
                          padding: new EdgeInsets.all(20),
                          tooltip: 'Logout',
                          onPressed: () {
                            signOutGoogle().then((result) {
          
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return LoginPage();
                                },
                              ),
                            );
                          
                        });
                          }
                        ) 
          )
        ],
      ),
    );
  }
}