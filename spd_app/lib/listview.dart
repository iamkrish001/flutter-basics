import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  final List _list = ['post1', ' post2', 'post3'];
  final List _stories = ['story1', ' story2', 'story3', 'story4', 'story5'];
  ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SafeArea(
          child: Container(
            // if I have to use container i have to specify the height of the container
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return MyCircle(text: _stories[index]);
              },
              itemCount: _stories.length,
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: ListView.builder(
              itemBuilder: ((context, index) {
                return SquareBox(child: _list[index]);
              }),
              itemCount: _list.length),
        ),
      ]),
    );
  }
}

class SquareBox extends StatelessWidget {
  final String child;
  const SquareBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.indigo.shade500,
              borderRadius: BorderRadius.circular(16)),
          height: 300,
          child: Center(
              child: Text(
            child,
            style: const TextStyle(color: Colors.white),
          ))),
    );
  }
}

class MyCircle extends StatelessWidget {
  final String text;
  const MyCircle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blueAccent,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ), // the text is self defined by myself and the Text widget returns the value string of text
      ),
    );
  }
}
