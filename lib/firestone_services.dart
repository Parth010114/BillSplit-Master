
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'friends_new.dart';

class crudMethods{

  bool isLoggedIn() {
    if(FirebaseAuth.instance.currentUser !=null){
      return true;
    }
    else{
      return false;
    }
  }

  Future<void> addData(friendData) async{
    if(isLoggedIn()){
      FirebaseFirestore.instance.collection('friendsData').add(friendData).catchError((e){
        print(e);
      });
    }
    else{
      print("You need to be logged in");
    }
  }

  Future<void> addGroupData(groupData) async{
    FirebaseFirestore.instance.collection('groupData').add(groupData).catchError((e){
        print(e);
      });
  }

  //getData() async{
    // FirebaseFirestore.instance
    // .collection('friendsData')
    // .get()
    // .then((QuerySnapshot querySnapshot) => {
    //     querySnapshot.docs.forEach((doc) {
    //         print(doc["name"]);
    //     })
    // });
  //   return await FirebaseFirestore.instance.collection('friendsData').get();
    
  // }
}
