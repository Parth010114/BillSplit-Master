import 'friends_new.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'appbar.dart';
import 'bottomnavigation.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
                  MyAppBar(
                    title: Text(
                      'BILLSPLIT',
                      style: Theme.of(context).primaryTextTheme.headline6,
                      
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(  
                        alignment: Alignment.center,                          
                        width: 300.0,
                        height: 300.0,
                        decoration: BoxDecoration(
                          //color: HexColor('#21D0B2'),
                          shape: BoxShape.circle,
                          //borderRadius: BorderRadius.all(Radius.circular(40)),
                          border: Border.all(
                            width: 8,
                            color: HexColor('2F455C'),
                            style: BorderStyle.solid,
                          ) 
                        ) ,
                        
                        child: Text('TOTAL\nBALANCE\nRs.920',
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          
                        ),
                        textAlign: TextAlign.center,
                        
                        )
                        
                      )
                    ],
                  ),
                  SizedBox(height: 40.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text('YOUR STATEMENT',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          )

                        ),
                    ],
                  ),
                  SizedBox(height: 40.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 70.0 ,
                        width: 400.0,
                        alignment: Alignment.center,
                        
                        child: Text('YOU OWE : Rs. 1240',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          )
                        ),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                          color: HexColor('2F455C'),
                        ),
                        )
                    ]
                  ),
                  SizedBox(height: 40.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 70.0 ,
                        width: 400.0,
                        alignment: Alignment.center,
                        
                        child: Text('YOU ARE OWED : Rs. 320',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          )
                        ),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                          color: HexColor('#34F5CF'),
                        ),
                        )
                    ]
                  ) ,
                  
                  
                ],
              )
                      
            ],
          ),
          bottomNavigationBar: MyNavBar(link: FriendsNew()),
    
    );
        
      
        
    
        
  }
}