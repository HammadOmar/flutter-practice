import 'package:flutter/material.dart';



class AnimOpacity extends StatefulWidget {
  const AnimOpacity({super.key});

  @override
  State<AnimOpacity> createState() => _AnimOpacity();
}


class _AnimOpacity extends State<AnimOpacity> {

  var myOpacity = 1.0;
  bool myShow = true;


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
              AnimatedOpacity(opacity: myOpacity, duration: const Duration(seconds:1), curve: Curves.elasticIn, child: Container(width: 200, height: 100, color: Colors.greenAccent)),
              ElevatedButton(onPressed: () {
                setState(() {
                  if (myShow) {
                    myOpacity = 0.0;
                    myShow = false;
                  } else {
                    myOpacity = 1.0;
                    myShow = true;
                  }
                });
              }, child: const Text('Animate')),
            ],
          ),
        )
    );
  }
}