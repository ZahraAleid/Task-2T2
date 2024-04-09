import 'package:flutter/material.dart';


class CardRow extends StatelessWidget {
  const CardRow({
    required this.text,
    required this.icon,
    required this.color,
    super.key,
  });

  final String text;
  final Icon icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: MediaQuery.of(context).size.width *0.8,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: color,
      ),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 10),
        icon,
        const SizedBox(width: 10),
         Text(text),
         SizedBox(width: 8),
      ],
      ),
    );
  }
}