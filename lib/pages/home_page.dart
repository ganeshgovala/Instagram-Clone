// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagramclone/components/post.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Padding(
            padding: const EdgeInsets.only(top: 24.0, left: 8),
            child: Image.asset('lib/assets/instagram-logo.png', height: 40,),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 24.0, right: 16),
              child: Icon(Icons.favorite_outline, color: Colors.white, size: 26,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0, right: 16),
              child: Icon(Icons.arrow_outward_outlined, color: Colors.white, size: 26,),
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: 16,),
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 28, 28, 28),
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 3,
                          color: index % 4 != 0 ? Colors.red : Colors.green,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Divider(
              color: const Color.fromARGB(255, 31, 31, 31),
            ),
            SizedBox(height: 5,),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Post(),
                  );
                }
              ),
            )
          ],
        ),
      );
  }
}