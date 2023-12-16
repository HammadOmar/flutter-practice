import 'package:flutter/material.dart';

class TagHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Muhammad Hammad'),
        backgroundColor: Colors.pinkAccent,
      ),
      body:
      Hero(tag: 'background', child: Image.asset('assets/images/1.jpg')),
    );
  }
}