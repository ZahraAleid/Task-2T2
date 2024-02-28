import 'package:flutter/material.dart';
import 'package:social_media/model/item.dart';
import 'package:social_media/screens/item_screen.dart';

class HomeScreen extends StatelessWidget {
 HomeScreen({super.key});

// final List<Item> items =[
//   Item(title: "Apple",image: "assets/apple.jpg", price: 12.2),
//   Item(title: "Banana",image: "assets/banana.jpg", price: 12.2),
// ];

void _navigate(BuildContext context,item){
  Navigator.push(
    context, MaterialPageRoute(
      builder: (context) =>  ItemScreen(item: item,)
      ),
      );
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      title: const Text("live"),
      backgroundColor: Colors.black,
      titleTextStyle: const TextStyle(color: Colors.amber, fontFamily: 'RaleWay'),
    ),
      body: Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index){
            return  ListTile(
            title: Text(items[index].title),
            leading: Container(
              height: 100,
              width: 100,
              decoration:  BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(items[index].image)
                  )
                   ),
            ),
            onTap: () => _navigate(context,items[index]) ,
          );
            },
            ),
        )
      ],
    )
    );
  }
}