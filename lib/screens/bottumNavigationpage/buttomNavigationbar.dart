import 'package:flipkart/screens/Accountpage.dart';
import 'package:flipkart/screens/Cartpage.dart';
import 'package:flipkart/screens/Categoriespage.dart';
import 'package:flipkart/screens/Notificationpage.dart';
import 'package:flipkart/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class bottumNavigationbar extends StatefulWidget {
  const bottumNavigationbar({super.key});

  @override
  State<bottumNavigationbar> createState() => _bottumNavigationbarState();
}

class _bottumNavigationbarState extends State<bottumNavigationbar> {

  int index=0;
  final Screens =[
     homeScreen(),
     Catogoriespage(),
     Notificationspage(),
     Accountpage(),
     Cartpage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Screens[index] ,
         bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.all(
          TextStyle(fontWeight: FontWeight.w500,fontSize: 13),
          )
        ),
        child: NavigationBar(
          height: 50,
          selectedIndex: index,
          onDestinationSelected: (index) => 
          setState(() => this.index=index),
          destinations: [
          NavigationDestination(icon: Icon(Icons.home_outlined
          ), label:'Home'),
      
           NavigationDestination(icon: Icon(Icons.apps
          ), label:'Categories'),
      
           NavigationDestination(icon: Icon(Icons.notifications_outlined
          ), label:'Notifications'),
      
           NavigationDestination(icon: Icon(Icons.account_circle_outlined
          ), label:'Account'),
      
           NavigationDestination(icon: Icon(Icons.shopping_cart_outlined
          ), label:'Cart'),
        ]),
      ),



    );
  }
}