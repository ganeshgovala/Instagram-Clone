// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagramclone/pages/add_post.dart';
import 'package:instagramclone/pages/home_page.dart';
import 'package:instagramclone/pages/profile_page.dart';
import 'package:instagramclone/pages/search_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int currentIndex = 0;
  List<Widget> pages = [HomePage(), SearchPage(), AddPost(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        backgroundColor: Colors.black,
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: Colors.grey[600],
        selectedFontSize: 2,
        unselectedFontSize: 2,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: currentIndex == 0 ? Center(child: Icon(Icons.home_rounded, size: 30,)) : Center(child: Icon(Icons.home_outlined, size: 30)),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Center(child: Icon(Icons.search_outlined, size: 30,)),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Center(child: Icon(Icons.add_box_outlined, size: 30,)),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Center(child: Icon(Icons.person_outline_outlined, size: 30,)),
            label: ""
          ),
        ]
      ),
      body: pages[currentIndex],
    );
  }
}