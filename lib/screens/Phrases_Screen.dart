import 'package:flutter/material.dart';
import 'package:tharwat_course/components/items.dart';
import 'package:tharwat_course/models/Models.dart';




class PhrasesScreen extends StatelessWidget {
  const  PhrasesScreen({super.key,});
  final List<NumAndPhrasModel> phrases = const [
    NumAndPhrasModel(sound: 'sounds/phrases/are_you_coming.wav',
         jpName: 'Ichi', enName: 'are you coming'),
    NumAndPhrasModel(sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
         jpName: 'otcho', enName: 'don\'t forget to subscribe'),
    NumAndPhrasModel(sound: 'sounds/phrases/how_are_you_feeling.wav',
         jpName: 'matcho', enName: 'how are you feeling'),
    NumAndPhrasModel(sound: 'sounds/phrases/i_love_anime.wav',
         jpName: 'fatcho', enName: 'i love anime'),
    NumAndPhrasModel(sound: 'sounds/phrases/i_love_programming.wav',
         jpName: 'Satcho', enName: 'i love programming'),
    NumAndPhrasModel(sound: 'sounds/phrases/programming_is_easy.wav',
         jpName: 'Natcho', enName: 'programming is easy'),
    NumAndPhrasModel(sound: 'sounds/phrases/what_is_your_name.wav',
         jpName: 'modretcho', enName: 'what is your name'),
    NumAndPhrasModel(sound: 'sounds/phrases/where_are_you_going.wav',
         jpName: 'Eightcho', enName: 'where are you going'),
    NumAndPhrasModel(sound: 'sounds/phrases/yes_im_coming.wav',
         jpName: 'Ninetcho', enName: 'yes,i\'m coming'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color(0xff533D35),

        title: const Text('Phrases',style: TextStyle(
            fontSize: 30.0,
            color: Colors.white
        ),),
      ),
      body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder:(context , num)
          {
            return ItemInfo(
              color: const Color(0xff51B0D5),

              item:phrases[num],
            );
          }

      ),
    );
  }
}




