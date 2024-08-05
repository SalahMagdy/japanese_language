import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key, this.text,this.color, this.onTap});
  final Color? color ;
  final String? text;
  final Function()? onTap ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 80,
        color: color,
        child: Text('$text',
          style: const TextStyle(color: Colors.white,
              fontSize: 30),),
      ),
    );
  }
}
