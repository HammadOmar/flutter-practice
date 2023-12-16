import 'package:flutter/material.dart';
import 'package:third_gui/tagHero.dart';


class HeroAnime extends StatefulWidget {
  const HeroAnime({super.key});

  @override
  State<HeroAnime> createState() => _HeroAnime();
}

class _HeroAnime extends State<HeroAnime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muhammad Hammad'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(child: InkWell(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => TagHero(),));
      },child: Hero(tag: 'background',child: Image.asset('assets/images/1.jpg', width: 200, height: 200,)))),
    );
  }
}