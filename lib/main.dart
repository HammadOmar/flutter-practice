import 'package:flutter/material.dart';
import 'package:third_gui/bmi_calculator.dart';
import 'package:third_gui/listWheelScrollView.dart';
import 'package:third_gui/map_widget.dart';
import 'package:third_gui/ripple_animation.dart';
import 'package:third_gui/shared_preference.dart';
import 'package:third_gui/tween_animation.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
        // If you want to set the background color, you can use scaffoldBackgroundColor
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      home: const SharedPreference(),
    );
  }
}



