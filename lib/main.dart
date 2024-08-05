import 'package:flutter/material.dart';
import 'package:tharwat_course/screens/home_screen.dart';

void main (){
  runApp(const flutterCourse());
}



class flutterCourse extends StatelessWidget {
  const flutterCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_Screen(),
    );
  }
}

