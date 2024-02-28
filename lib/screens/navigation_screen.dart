import 'package:flutter/material.dart';
import 'package:social_media/screens/profile_screen.dart';
import 'package:social_media/screens/home_screen.dart';
import 'package:social_media/screens/notification_screen.dart';
import 'package:social_media/screens/search_screen.dart';

class NavigationScreen extends StatefulWidget {
   NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
   int _currentIndex = 0;

  final List<Widget> _pages = [

     HomeScreen(),
    const ProfileScreen(),
    const SearchScreen(),
    const NotificationScreen(),

  ];

  void _changePage(index){
    setState(() {
      _currentIndex =index;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,

    

    body: _pages[_currentIndex],

    bottomNavigationBar: BottomNavigationBar(
      currentIndex: _currentIndex,
      selectedItemColor: Color.fromARGB(255, 255, 153, 153),
      unselectedItemColor: Colors.grey,
      items:const [
      BottomNavigationBarItem(icon: Icon(Icons.home),
      label: "home"),
      BottomNavigationBarItem(icon: Icon(Icons.person),
      label: "profile"),
      BottomNavigationBarItem(icon: Icon(Icons.search),
      label: "search"),
      BottomNavigationBarItem(icon: Icon(Icons.notification_important),
      label: "notification"),

    ],
    onTap: _changePage ,
    ),
    );
  }
}