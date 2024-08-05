import 'package:flutter/material.dart';
import 'package:tharwat_course/components/items.dart';
import 'package:tharwat_course/models/Models.dart';




class ColorsScreen extends StatelessWidget {
  const  ColorsScreen({super.key,});
  final List<familyMember> member = const [
    familyMember(sound: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png', jpName: 'Ichi', enName: 'Black'),
    familyMember(sound: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png', jpName: 'otcho', enName: 'Brown'),
    familyMember(sound: 'sounds/colors/dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png', jpName: 'matcho', enName: 'Dusty yellow'),
    familyMember(sound: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png', jpName: 'Grandfather', enName: 'Grey'),
    familyMember(sound: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png', jpName: 'Grandmother', enName: 'Green'),
    familyMember(sound: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png', jpName: 'Natcho', enName: 'Red'),
    familyMember(sound: 'sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png', jpName: 'modretcho', enName: 'White'),
    familyMember(sound: 'sounds/colors/yellow.wav',
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




