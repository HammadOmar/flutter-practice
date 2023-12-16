import 'package:flutter/material.dart';

class Anim_Container extends StatefulWidget {
  const Anim_Container({super.key});

  @override
  State<StatefulWidget> createState() => _Anim_Container();
}

class _Anim_Container extends State<Anim_Container> {

  var _width = 200.0;
  var _height = 100.0;
  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color : Colors.greenAccent,
  );


  bool _flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Muhammad Hammad'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(duration: const Duration(seconds: 1), width: _width, height: _height, decoration: myDecor, curve: Curves.bounceIn),
              ElevatedButton(onPressed: () {
                setState(() {
                  if (_flag) {
                    _width = 100.0;
                    _height = 200.0;
                    myDecor = BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.deepPurpleAccent,
                    );
                    _flag = false;
                  } else {
                    _width = 200.0;
                    _height = 100.0;
                    myDecor = BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.green,

                    );
                    _flag = true;
                  }
                });
              }, child: const Text('Animate'))
            ],
          ),
        )
    );
  }
}
