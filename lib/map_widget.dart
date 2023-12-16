import 'package:flutter/material.dart';


class MyMap extends StatefulWidget {
  const MyMap({super.key});

  @override
  State<MyMap> createState() => _MyMap();
}

class _MyMap extends State<MyMap> {

  var arrData = ['Hammad', 'Ahmed', 'Waqas', 'Juniad', 'Sajawal', 'Shahid', 'saleem', 'Ali', 'Zaid', 'Areeb', 'Fareed', 'Faheem', 'Waseem', 'Kashif', 'Kamaran'];

  var dictData = [
    {
      'Name': 'Muhammad Hammad',
      'Age': '24',
      'Cell': '090078601'
    },
    {
      'Name': 'Muhammad Zeeshan',
      'Age': '25',
      'Cell': '090078601'
    },
    {
      'Name': 'Banny Alisha',
      'Age': '27',
      'Cell': '090078601'
    },
    {
      'Name': 'Mir Hasan',
      'Age': '23',
      'Cell': '090078601'
    },
    {
      'Name': 'Muhammad Faizan',
      'Age': '28',
      'Cell': '090078601'
    },
    {
      'Name': 'Muhammad Hammad',
      'Age': '24',
      'Cell': '090078601'
    },
    {
      'Name': 'Muhammad Zeeshan',
      'Age': '25',
      'Cell': '090078601'
    },
    {
      'Name': 'Banny Alisha',
      'Age': '27',
      'Cell': '090078601'
    },
    {
      'Name': 'Mir Hasan',
      'Age': '23',
      'Cell': '090078601'
    },
    {
      'Name': 'Muhammad Faizan',
      'Age': '28',
      'Cell': '090078601'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Muhammad hammad'),
          backgroundColor: Colors.cyanAccent,
        ),
        body:
        Container(
          child: ListView(
            children: dictData.map((e) => ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(e['Name'].toString()),
              subtitle: Text(e['Cell'].toString()),
              trailing: CircleAvatar(child: Text(e['Age'].toString())),

            )).toList(),
          ),
        )


      /*ListView(
            children: arrData.map((value) {
              return Container(child: Text('$value'));
            }).toList()
          ),
        )

           */
    );
  }
}
