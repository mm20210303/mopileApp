import 'package:flutter/material.dart';
import 'package:testcode/clipsscreen.dart';
import 'package:testcode/homescreen.dart';
import 'package:testcode/mycoursesscreen.dart';
import 'package:testcode/profilescreen.dart';
import 'package:testcode/searchscreen.dart';

class Controlscreen extends StatefulWidget {
  @override
  State<Controlscreen> createState() => _ControlscreenState();
}

class _ControlscreenState extends State<Controlscreen> {
  final List mypages = [
    Homescreen(),
    Searchscreen(),
    Clipsscreen(),
    Mycoursesscreen(),
    Profilescreen(),
  ];

  int select = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D213C),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Color(0xff0D213C),
          leading: Icon(
            Icons.add_shopping_cart_outlined,
            color: Colors.white,
            size: 30,
          ),
          actions: [
            Icon(
              Icons.notification_add_outlined,
              color: Colors.white,
              size: 30,
            ),
          ],
        ),
      ),
      body: mypages[select],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Color(0xff0D213C),
            border: Border(top: BorderSide(color: Colors.white, width: 1))),
        child: BottomNavigationBar(
          currentIndex: select,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.white,
            backgroundColor: Color(0xff0D213C),
            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              setState(() {
                select = value;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.video_collection_rounded), label: "clips"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.collections_bookmark_outlined),
                  label: "My courses"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), label: "Profile"),
            ]),
      ),
    );
  }
}
