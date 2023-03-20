// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spd_app/square.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SafeArea(
          child: const Padding(
              padding: EdgeInsets.only(top: 20, left: 5),
              child: Text("Hello,", style: TextStyle(fontSize: 16))),
        ),
        elevation: 0,
        backgroundColor: const Color(0xff115DA9),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.bell,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 15),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: ClipRRect(
                      child: Image.asset(
                    'assets/icons8-user-50.png',
                    color: Colors.white,
                    height: 30,
                    fit: BoxFit.cover,
                  )),
                ),
              )
            ],
          )
        ],
      ),
      body: Column(children: [
        // ignore: duplicate_ignore
        Container(
          width: 600,
          height: 200,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            color: Color(0xff115DA9),
          ),
          // ignore: sort_child_properties_last
          child: Text(
            " Krish Bhurtel",
            style: const TextStyle(color: Colors.white, fontSize: 20),
            textAlign: TextAlign.start,
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Shortcut",
              style: TextStyle(color: Colors.grey),
            ),
            Text("Bills", style: TextStyle(color: Colors.grey)),
            Text(
              "Commerce",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
        SizedBox(height: 20),
        ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(height: 30),
            MyCard(),
            MyCard(),
          ],
        )
      ]),
    );
  }
}
