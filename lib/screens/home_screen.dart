import 'package:flutter/material.dart';
import 'package:tharwat_course/components/category.dart';
import 'package:tharwat_course/screens/colors_screen.dart';
import 'package:tharwat_course/screens/family_member_screen.dart';
import 'package:tharwat_course/screens/numbers_screen.dart';
import 'package:tharwat_course/screens/phrases_screen.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff533D35),
        title: const Text('Tuko',
          style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: 'Dexef'
          ),),
      ),
      body: Column(
        children: [
          Category(color: const Color(0xffFF9F3B),
            text: 'Numbers',
            onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>const NumbersScreen()));
            },
          ),
          Category(color: const Color(0xff5D8B3E),
            text: 'FamilyMembers',
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=> const FamilymemberScreen()));

          },),
          Category(color: const Color(0xff854CAE),
            text: 'Colors',
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=> const ColorsScreen()));
          },),
          Category(color: const Color(0xff51B0D5),
            text: 'Phrases',
          onTap: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context)=> const PhrasesScreen()));

          },),

        ],
      ),

    );
  }
}
