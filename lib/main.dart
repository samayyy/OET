import 'package:flutter/material.dart';
import '/HomePage.dart';
import '/Morning_Model.dart';
import 'Detail_Page.dart';
import 'Screens/Welcome/welcome_screen.dart';
import 'Setting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // home : homepage()
      routes:{
        '/': (ctx)=>WelcomeScreen(),
        '/Home': (ctx)=>homepage(),
        '/Detail': (ctx)=>Details(),
        '/Morning': (ctx)=>Morning(),
        '/Setting': (ctx)=>SettingPage(),
      }
    );
  }
}
