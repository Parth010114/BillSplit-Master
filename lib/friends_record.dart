import 'package:flutter/rendering.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'friends_new.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'bottomnavigation.dart';
import 'appbar.dart';
import 'package:align_positioned/align_positioned.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FriendsRecordPage extends StatefulWidget{
  @override
  FriendsRecord createState() => new FriendsRecord();
}
class FriendsRecord extends State<FriendsRecordPage>{
  //crudMethods crudObj=new crudMethods();
  //QuerySnapshot friends;
  var friends=[];
  @override
  void initState(){
    FirebaseFirestore.instance.collection('friendsData').get()
    //   (QuerySnapshot results){
    //   setState((){
    //     friends = results;
    //     print(friends);
    //   });
    // });
    .then((QuerySnapshot querySnapshot) => {
        querySnapshot.docs.forEach((doc) {
            print(doc["name"]);
            if(doc["userid"]==FirebaseAuth.instance.currentUser.uid)
            friends.add({'name': doc["name"],'amount':doc["amount"]});
        })
    });
    //print(friends);
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    //var friends= [{'name':'Avee','amount':'Rs. 500','type':'owe'}, {'name':'Nandita','amount':'Rs. 280','type':'owe'}, {'name':'Anvi','amount':'Rs. 320','type':'owed'}, {'name':'Rujuta','amount':'Rs. 260','type':'owe'}, {'name':'Vignesh','amount':'Rs. 200','type':'owe'}];
    if(friends!= null){
    return Scaffold(
      body: ListView(
      // .builder(
      //   itemCount: friends.docs.length,
      //   itemBuilder:(context,i){
      //     return new ListTile(
      //       title:Text(friends.docs[i].data()['name']),
      //       subtitle:Text(friends.docs[i].data()['description']),
      //     );
      //   },
        children: <Widget>[
          Column(
            children: <Widget>[
                  MyAppBar(
                    title: Text(
                      'FRIENDS',
                      style: Theme.of(context).primaryTextTheme.headline6,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: <Widget>[
                      for(var item in friends)
                        Column(children: [
                          Container(
                            height: 70.0 ,
                            width: 400.0,
                            //alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[200],
                              boxShadow: [BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 5.0,
                                      ),]
                            ),
                            child: Padding(
                              padding: new EdgeInsets.all(10),
                              child: Stack(
                              //crossAxisAlignment: CrossAxisAlignment.stretch,
                              children:[
                                AlignPositioned(
                                  child:Icon(
                                    Icons.person,
                                    size: 50.0,
                                    
                                  ),
                                  
                                  alignment: Alignment(-1,0),
                                  touch:Touch.inside,
                                ),
                                AlignPositioned(
                                  child: Text(item['name'],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                    //fontWeight: FontWeight.w500,
                                    )
                                  ),
                                  alignment: Alignment(-0.4,0),
                                ),
                                AlignPositioned(
                                  child: Container(
                                    height: 35.0 ,
                                     width: 90.0,
                                    //alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                      border: Border.all(color: HexColor('#34F5CF')),
                                      
                                    ),
                                    
                                    child: Center(
                                      child:Text('Rs.'+ item['amount'],
                                    style: TextStyle(
                                      color: HexColor('#34F5CF'),
                                      fontSize: 15.0,
                                    //fontWeight: FontWeight.bold,
                                    )
                                  ),
                                    )
                                  ),
                                  alignment: Alignment(1,0),
                                  touch: Touch.inside
                                )
                              ] 
                            ),
                            )
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          
                        ]
                        )  
                    ]
                  ),
                  
            ]
          )
        ]
      ),
      bottomNavigationBar: MyNavBar(link: FriendsNew())
    );
    }
    else {
      return Text("Loading. Please wait");
    }
  }
}