import 'package:flutter/material.dart';


class ListWheelScroll extends StatefulWidget {
  const ListWheelScroll({Key? key});

  @override
  State<ListWheelScroll> createState() => _ListWheelScroll();
}

class _ListWheelScroll extends State<ListWheelScroll> {
  var arrNum = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muhammad Hammad', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: ListWheelScrollView(
        itemExtent: 100,
        children: arrNum.map((value) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(width: double.infinity, decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21),
            color: Colors.pink,
          ),child: Center(child: Text('$value',style: TextStyle(color: Colors.white,fontSize: 34, fontWeight: FontWeight.bold),)),),
        )).toList(),
      ),
    );
  }
}
