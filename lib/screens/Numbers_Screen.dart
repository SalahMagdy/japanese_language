import 'package:flutter/material.dart';
import 'package:tharwat_course/components/items.dart';
import 'package:tharwat_course/models/Models.dart';




class numbersScreen extends StatelessWidget {
 const  numbersScreen({super.key,});
  final List<NumAndPhrasModel> numbers = const [
    NumAndPhrasModel(sound: 'sounds/numbers/number_one_sound.mp3',
        image: 'assets/images/numbers/number_one.png', jpName: 'Ichi', enName: 'One'),
    NumAndPhrasModel(sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png', jpName: 'otcho', enName: 'Two'),
    NumAndPhrasModel(sound: 'sounds/numbers/number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png', jpName: 'matcho', enName: 'Three'),
    NumAndPhrasModel(sound: 'sounds/numbers/number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png', jpName: 'fatcho', enName: 'Four'),
    NumAndPhrasModel(sound: 'sounds/numbers/number_five_sound.mp3',
        image: 'assets/images/numbers/number_Five.png', jpName: 'Satcho', enName: 'Five'),
    NumAndPhrasModel(sound: 'sounds/numbers/number_six_sound.mp3',
        image: 'assets/images/numbers/number_Six.png', jpName: 'Natcho', enName: 'Six'),
    NumAndPhrasModel(sound: 'sounds/numbers/number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png', jpName: 'modretcho', enName: 'Seven'),
    NumAndPhrasModel(sound: 'sounds/numbers/number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png', jpName: 'Eightcho', enName: 'Eight'),
    NumAndPhrasModel(sound: 'sounds/numbers/number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png', jpName: 'Ninetcho', enName: 'Nine'),
    NumAndPhrasModel(sound: 'sounds/numbers/number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png', jpName: 'tenetho', enName: 'Ten'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color(0xff533D35),

        title: const Text('Numbers',style: TextStyle(
          fontSize: 30.0,
          color: Colors.white
        ),),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder:(context , num)
        {
          return Items(
            color: Color(0xffFF9F3B),

            number:numbers[num],
          );
        }

      ),
    );
  }
}



