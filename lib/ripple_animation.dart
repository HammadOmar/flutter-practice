import 'package:flutter/material.dart';

class RippleAnime extends StatefulWidget {
  const RippleAnime({super.key});

  @override
  State<RippleAnime> createState() => _RippleAnime();
}

class _RippleAnime extends State<RippleAnime> with SingleTickerProviderStateMixin {

  late Animation animation;
  late AnimationController animationController;

  var arrRadius = [100.0, 150.0, 200.0, 250.0, 300.0];

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(vsync: this, duration: const Duration(seconds: 5), lowerBound: 0.5);
    animation = Tween(begin: 0.0, end:1.0).animate(animationController);

    animation.addListener(() {
      print(animation.value);
      setState((){});
    });

    animationController.forward();


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Muhammad Hammad', style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
            children:[
              buildMyContainer(arrRadius[0]),
              buildMyContainer(arrRadius[1]),
              buildMyContainer(arrRadius[2]),
              buildMyContainer(arrRadius[3]),
              buildMyContainer(arrRadius[4]),
              const Icon(Icons.call, color:  Colors.white, size: 34,),
            ]
      ))

    );
  }

  Widget buildMyContainer(radius) {
    return Container(
      width: radius * animationController.value,
      height: radius * animationController.value,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue.withOpacity(1.0 - animationController.value)
      ),
    );
  }



}