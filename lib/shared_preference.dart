import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference extends StatefulWidget {
  const SharedPreference({super.key});

  @override
  State<SharedPreference> createState() => _SharedPreference();
}

class _SharedPreference extends State<SharedPreference> {

  var nameController = TextEditingController();
  var showValue = 'No Value Saved!';

  @override
  void initState() {
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Muhammad Hammad', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 300,
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                  ),
                  //hintText: 'Enter Name',
                  labelText: 'Name'
                ),
              ),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: () async {
              var name = nameController.toString();

              var pref = await SharedPreferences.getInstance();

              pref.setString('Name', name);

            }, child: const Text('Click')),
            const SizedBox(height: 20,),
            Text(showValue)
          ],
        ),
      )
    );
  }


  void getValue() async {
      var pref = await SharedPreferences.getInstance();
      var getValue = pref.getString('Name');
      showValue = getValue ?? 'No Value Saved!';
      setState((){});
  }
}