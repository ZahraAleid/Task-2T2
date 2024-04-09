import 'package:flutter/material.dart';
import 'package:social_media/model/boxes.dart';
import 'package:social_media/model/card_row.dart';
import 'package:social_media/model/item.dart';
import 'package:social_media/screens/explorePage.dart';
import 'package:social_media/screens/item_screen.dart';



class HomeScreen extends StatefulWidget {
 HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
final List<Item> items =[
  Item(title: "Apple",image: "assets/apple.jpg", price: 12.2),
  Item(title: "Banana",image: "assets/banana.jpg", price: 12.2),
];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      title: const Text("live"),
      backgroundColor: Colors.black,
      titleTextStyle: const TextStyle(color: Colors.amber, fontFamily: 'RaleWay', fontSize: 30),
    ),
      body: 
        Column(
          
               crossAxisAlignment: CrossAxisAlignment.start, 
               children: [
              
                 const SizedBox(height: 15,),
                Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
              SizedBox(width: 40),
              
              Stack(
              children: <Widget>[
                Container(
                  width:100,
                  height:100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: const DecorationImage(
                      image: AssetImage("assets/stitch.jpg"),
                    ),
                    ),
                ),
                 const Positioned( 
                  bottom: 0, left: 75, //give the values according to your requirement
                  child:  CircleAvatar(
                radius: 12,
                backgroundColor: Colors.amber,
                child: 
                   Icon(
                    Icons.add,
                    color: Colors.black,
                  
                  
                ),
              ),
                  
                  
                ),
                  ],
                ),


                  const SizedBox(width: 5,),
                Container(
                   width:100,
                  height:100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: const DecorationImage(
                      image: AssetImage("assets/tom.jpg"),
                    ),
                    ),
                ),
                 const  SizedBox(width: 5,),
                Container(
                 width:100,
                  height:100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: const DecorationImage(
                      image: AssetImage("assets/bear.jpg"),
                    ),
                    ),
                ),
                const  SizedBox(width: 5,),
                Container(
                 width:100,
                  height:100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: const DecorationImage(
                      image: AssetImage("assets/snoopy2.jpg"),
                    ),
                    ),
                ),
                
                ],
                ), 
             SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 70,),
       Container( 
                 width: 110 ,
                height: 50,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(minimumSize: const Size(200,50),
                   primary: Colors.black,
                    backgroundColor: Colors.white,),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return HomeScreen();
                    },
                    ),
                    );
                  },
                   child: Text("ForYou"),
                   
                   ),
              ),
              SizedBox(width: 10,),
              Container( 
                 width: 110 ,
                height: 50,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(minimumSize: const Size(200,50),
                   primary: Colors.black,
                    backgroundColor: Colors.white,),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ExplorScreen();
                    },
                    ),
                    );
                  },
                   child: Text("Explore"),
                   
                   ),
              ),
              const SizedBox(width: 10,),
              Container( 
                 width: 110 ,
                height: 50,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(minimumSize: const Size(200,50), primary: Colors.black,
                    backgroundColor: Colors.white,),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ExplorScreen();
                    },
                    ),
                    );
                  },
                   child: const Text("Discover"),
                   
                   ),
              ),
              ],

            ),
            const SizedBox(height:20,),
            
              Row(
                
                children: [
                    const SizedBox(width:20,),
                  Container(
                 width:40,
                  height:40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: const DecorationImage(
                      image: AssetImage("assets/snoopy2.jpg"),
                    ),
                    ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text("SnoopyTheKing",style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 15, color: Colors.white),textAlign: TextAlign.left, ),
                ),
               
               
              
                      ],
              ),
              SizedBox(height:20,),
            Container(
              
                 width:500,
                  height:260,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/snoopy.jpg"),
                    ),
                    ),
                ),
                
                ]
                
                ),
      backgroundColor: Colors.black,
    );
  }
}