import 'package:flutter/material.dart';
import 'package:social_media/model/item.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key, required this.item});

final Item item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Item"),
      ),
      body:  Center(
        child: Column(
        children: [
            Container(
                height: 100,
                width: 100,
                decoration:  BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(item.image)
                    )
                     ),
              ),
              Text(item.title),
        
              Text("${item.price}"),
        
              ElevatedButton(
                onPressed: (){},
               child: const Text("Buy!"),
               )
        ],
        ),
      ),
    );
  }
}