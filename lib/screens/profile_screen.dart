import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 140,
            color: Color.fromARGB(255, 37, 70, 47),
            
        ),
        Container(
          width: MediaQuery.of(context).size.width,
            height: 558,
            color: Color.fromARGB(255, 207, 227, 213),
           
        )
      ],
      ),
      Column(
        
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width:140,
                  height:140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/cat1.jpg"),
                    ),
                    ),
                ),
              ],
            ),
              const Column(
                 crossAxisAlignment: CrossAxisAlignment.start, 
               children: [
                Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text("Username",style: TextStyle(color: Color.fromARGB(255, 30, 24, 24)),textAlign: TextAlign.left,),
                ),
                SizedBox(height: 5,),
                CardRow(text: "Zahra Al Eid", icon: Icon(Icons.person), color: Color.fromARGB(255, 173, 218, 190),),
                SizedBox(height: 30,),
                Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text("Email",style: TextStyle(color: Color.fromARGB(255, 30, 24, 24)),textAlign: TextAlign.left,),
                ),
                 SizedBox(height: 5,),
               CardRow(
              text: "Zahra.eid112@gmail.com",
              icon:  Icon(Icons.email),
              color: Color.fromARGB(255, 173, 218, 190),
            ),
             SizedBox(height: 30,),
             Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text("Phone",style: TextStyle(color: Color.fromARGB(255, 30, 24, 24)),textAlign: TextAlign.left,),
                ),
                 SizedBox(height: 5,),
             CardRow(
              text: "+966 54 238 0980",
               icon: Icon(Icons.phone),
                color: Color.fromARGB(255, 173, 218, 190),
              ),
              SizedBox(height: 30,),
              Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text("University",style: TextStyle(color: Color.fromARGB(255, 30, 24, 24)),textAlign: TextAlign.left,),
                ),
                 SizedBox(height: 5,),
              CardRow(text: "Imam Abdulrahman Bin Faisal University",
               icon: Icon(Icons.school),
                color: Color.fromARGB(255, 173, 218, 190),
                ),
              ],),
             Container(
               width: MediaQuery.of(context).size.width *0.4,
               height: 50,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
               color:  Color.fromARGB(255, 207, 209, 208),
                ),
                child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.edit),
                  SizedBox(width: 5),
                  Text(
                    "edit profile",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
                )
          ],
      
        ),
      ],
      );
  }
}