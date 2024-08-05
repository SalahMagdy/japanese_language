import 'package:flutter/material.dart';
import 'package:tharwat_course/components/items.dart';
import 'package:tharwat_course/models/Models.dart';




class FamilymemberScreen extends StatelessWidget {
  const  FamilymemberScreen({super.key,});
  final List<familyMember> member = const [
    familyMember(sound: 'sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_father.png', jpName: 'Ichi', enName: 'Father'),
    familyMember(sound: 'sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png', jpName: 'otcho', enName: 'Mother'),
    familyMember(sound: 'sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png', jpName: 'matcho', enName: 'Son'),
    familyMember(sound: 'sounds/family_members/grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png', jpName: 'Grandfather', enName: 'Grandfather'),
    familyMember(sound: 'sounds/family_members/grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png', jpName: 'Grandmother', enName: 'Grandmother'),
    familyMember(sound: 'sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png', jpName: 'Natcho', enName: 'daughter'),
    familyMember(sound: 'sounds/family_members/older bother.wav',
        image: 'assets/images/family_members/family_older_brother.png', jpName: 'modretcho', enName: 'Older brother'),
    familyMember(sound: 'sounds/family_members/older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png', jpName: 'Eightcho', enName: 'Older Sister'),
    familyMember(sound: 'sounds/family_members/younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png', jpName: 'Ninetcho', enName: 'Younger brother'),
    familyMember(sound: 'sounds/family_members/younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png', jpName: 'tenetho', enName: 'younger sister'),

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
              color: Color(0xff5D8B3E),
              member: member[i],
            );
          }

      ),
    );
  }
}



