import 'package:flutter/material.dart';
import 'package:tharwat_course/components/items.dart';
import 'package:tharwat_course/models/models.dart';





class ColorsScreen extends StatelessWidget {
  const  ColorsScreen({super.key,});
  final List<FamilyMember> member = const [
    FamilyMember(sound: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png', jpName: 'Ichi', enName: 'Black'),
    FamilyMember(sound: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png', jpName: 'otcho', enName: 'Brown'),
    FamilyMember(sound: 'sounds/colors/dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png', jpName: 'matcho', enName: 'Dusty yellow'),
    FamilyMember(sound: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png', jpName: 'Grandfather', enName: 'Grey'),
    FamilyMember(sound: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png', jpName: 'Grandmother', enName: 'Green'),
    FamilyMember(sound: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png', jpName: 'Natcho', enName: 'Red'),
    FamilyMember(sound: 'sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png', jpName: 'modretcho', enName: 'White'),
    FamilyMember(sound: 'sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png', jpName: 'Eightcho', enName: 'Yellow'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color(0xff533D35),

        title: const Text('Family Member',style: TextStyle(
            fontSize: 30.0,
            color: Colors.white
        ),),
      ),
      body: ListView.builder(
          itemCount: member.length,
          itemBuilder:(context , i)
          {
            return Items(
              color:const Color(0xff854CAE),
              member: member[i],
            );
          }

      ),
    );
  }
}






