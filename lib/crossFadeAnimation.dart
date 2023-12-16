import 'package:flutter/material.dart';

class CrossFadeAnime extends StatefulWidget {
  const CrossFadeAnime({super.key});

  @override
  State<CrossFadeAnime> createState() => _CrossFadeAnime();
}


class _CrossFadeAnime extends State<CrossFadeAnime> {


  bool isFirst = true;

  void reload() {
    setState(() {
      if (isFirst) {
        isFirst = false;
      } else {
        isFirst = true;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Muhammad Hammad'),
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedCrossFade(
                  duration: const Duration(seconds: 1),
                  firstChild: Container(width: 200, height: 200, color: Colors.blue,),
                  secondChild: Image.asset('assets/images/1.jpg', width: 200, height: 200,),
                  crossFadeState: isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond),
              ElevatedButton(onPressed: () {reload();}, child: const Text('Animate'))
            ],
          ),
        )
    );
  }
}