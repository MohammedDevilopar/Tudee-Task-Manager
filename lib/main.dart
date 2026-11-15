import 'package:flutter/material.dart';
import 'package:fonts1/AddTaskScreen.dart';
import 'package:fonts1/HomeScreen.dart';
import 'WelcomeScreen.dart';
import 'EditTaskScreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context)=> Welcomescreen(),
        '/home':(context)=>Homescreen(),
        '/AddTask':(context)=>Addtaskscreen(),
        '/EditTask':(context)=>Edittaskscreen(),
      },
    );
  }
}
