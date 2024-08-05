import 'package:audioplayers/audioplayers.dart';

class NumAndPhrasModel {
  final String? image;
  final String jpName;
  final String enName;
  final String sound;

  const NumAndPhrasModel({required this.sound,this.image,required this.jpName,required this.enName});
  playSound(){
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}

class familyMember {
  final String image;
  final String jpName;
  final String enName;
  final String sound;

  const familyMember({required this.sound,required this.image,required this.jpName,required this.enName});
  playSound(){
    final player2 = AudioPlayer();
    player2.play(AssetSource(sound));
  }
}