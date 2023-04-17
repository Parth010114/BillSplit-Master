import 'package:flutter/material.dart';
import 'homepage.dart';
import 'login_page.dart';
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: LoginPage());
    
  }
}