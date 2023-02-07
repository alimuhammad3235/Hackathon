import 'package:eapp/screens/menu1.dart';
import 'package:eapp/screens/mybag.dart';
import 'package:eapp/screens/propage.dart';
import 'package:eapp/screens/propage2.dart';
import 'package:eapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final tabs = [
    Center(
      child: MyPrdts(),
    ),
    Center(
      child: ProPage2(),
    ),
    Center(
      child: MyBag(),
    ),
    Center(
      child: Mymenu(),
    ),
  ];
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        iconSize: 30,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Stylecolor.bgColor,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        onTap: (Index) {
          setState(() {
            _currentindex = Index;
          });
        },
      ),
    );
  }
}
