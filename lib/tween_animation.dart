import 'package:flutter/material.dart';

class TweenAnime extends StatefulWidget {
  const TweenAnime({super.key});

  @override
  State<TweenAnime> createState() => _TweenAnime();
}

class _TweenAnime extends State<TweenAnime> with SingleTickerProviderStateMixin {

  late Animation animation;
  late Animation colorAnime;
  late AnimationController animationController;

  @override
  void initState() {

    animationController = AnimationController(vsync: this, duration: Duration(seconds: 10));
    animation = Tween(begin: 0.0, end: 200.0).animate(animationController);
    colorAnime = ColorTween(begin: Colors.blue, end: Colors.grey).animate(animationController);

    animationController.addListener(() {print(animation.value); setState(() {});});

    animationController.forward();


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Muhammad Hammad')
        ),
        body: Container(
          color: colorAnime.value,
          width: animation.value,
          height: animation.value,
        )
    );
  }
}
