import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tharwat_course/models/Models.dart';


class Items extends StatelessWidget {
  const Items({super.key,  this.number, required this.color,  this.member});
  final NumAndPhrasModel? number ;
  final Color color ;
  final familyMember? member;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      padding: EdgeInsetsDirectional.only(end: 20),
      // margin:EdgeInsetsDirectional.only(end: 20) ,
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF4DB),
            child:number != null?Image.asset('${number!.image}'):Image.asset('${member!.image}',),

          ),
          SizedBox(width: 16,),
          Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              number != null?Text('${number!.jpName}',style: TextStyle(fontSize: 16,color: Colors.white),):Text('${member!.jpName}',style: TextStyle(fontSize: 16,color: Colors.white),),
              number != null?Text('${number!.enName}',style: TextStyle(fontSize: 16,color: Colors.white),):Text('${member!.enName}',style: TextStyle(fontSize: 16,color: Colors.white),),

            ],
          ),
          Spacer(
            flex: 1,
          ),

          IconButton(onPressed: ()async {
            final player = AudioPlayer();
            player.play(number != null?AssetSource(number!.sound):AssetSource(member!.sound)
                );
          },
              icon:Icon(Icons.play_arrow,
                color: Colors.white,
              ), ),

        ],
      ),
    );
  }
}
class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item, required this.color});
  final NumAndPhrasModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsetsDirectional.symmetric(horizontal: 16),
      height: 100,
      color: color,
      child: Row(
        children: [
          Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${item.jpName}',style: TextStyle(fontSize: 16,color: Colors.white),),
              Text('${item.enName}',style: TextStyle(fontSize: 16,color: Colors.white),),

            ],
          ),
          Spacer(
            flex: 1,
          ),

          IconButton(onPressed: ()async {
           item.playSound();
          },
            icon:Icon(Icons.play_arrow,
              color: Colors.white,
            ), ),

        ],
      ),
    );
  }
}

