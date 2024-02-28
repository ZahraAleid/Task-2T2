import 'package:flutter/material.dart';
import 'package:social_media/screens/navigation_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title:"Task2",
      debugShowCheckedModeBanner: false,
      home: NavigationScreen(),
    );
  }
}
