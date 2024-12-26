// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ishowspeed", style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                      Text("song name", style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),)
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_vert, color: Colors.white, size: 24,),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical : 8.0),
            child: Container(
              height: 300,
              color: Colors.red,
            ),
          ),
          Row(
            children: [              
              Row(
                children: [
                  Icon(Icons.favorite_outline_outlined, color: Colors.white, size: 24,),
                  SizedBox(width: 5,),
                  Text("5.6M", style: TextStyle(
                    color: Colors.white,
                  ),)
                ],
              ),
              SizedBox(width: 12,),
              Row(
                children: [
                  Icon(Icons.comment_outlined, color: Colors.white, size: 24,),
                  SizedBox(width: 5,),
                  Text("5.6M", style: TextStyle(
                    color: Colors.white,
                  ),)
                ],
              ),
              SizedBox(width: 12,),
              Row(
                children: [
                  Icon(Icons.share, color: Colors.white, size: 24,),
                  SizedBox(width: 5,),
                  Text("5.6M", style: TextStyle(
                    color: Colors.white,
                  ),)
                ],
              ),
            ],
          ),
          Text(""),
          Text("ishowspeed hala madrid", style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white
          ),),
        ],
      ),
    );
  }
}