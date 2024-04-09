import 'package:flutter/material.dart';


class Boxes extends StatelessWidget {
  const Boxes({
    required this.text,
   
    super.key,
  });

  final String text;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: MediaQuery.of(context).size.width *0.3,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.grey,
      ),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 10),
        const SizedBox(width: 10),
         Text(text),
         SizedBox(width: 8),
      ],
      ),
    );
  }
}