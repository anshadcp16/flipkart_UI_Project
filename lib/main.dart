import 'package:flipkart/screens/Accountpage.dart';
import 'package:flipkart/screens/Categoriespage.dart';
import 'package:flipkart/screens/bottumNavigationpage/buttomNavigationbar.dart';
import 'package:flutter/material.dart';
import 'screens/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const bottumNavigationbar(),
    );
  }
}

