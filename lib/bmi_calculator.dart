//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});


  @override
  State<BMICalculator> createState() => _BMICalculator();
}

class _BMICalculator extends State<BMICalculator> {

  var weightController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();
  var result = "";
  var bgColor;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('BMI CALCULATOR'),
        ),
        body:
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xffffecd2), Color(0xfffcb69f)],
              begin: FractionalOffset(1.0, 0.5),
              end: FractionalOffset(0.0, 0.5),
              stops: [0.0, 0.0]
            )
          ),

          child: Center(
            child: SizedBox(
              width: 300,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('BMI', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),),

                  const SizedBox(height: 16,),

                  TextField(
                    controller: weightController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.line_weight),
                      label: Text('Enter your Weight'),),
                    keyboardType: TextInputType.number,
                  ),

                  const SizedBox(width: 10,),

                  TextField(controller: ftController,
                    decoration: const InputDecoration(
                      label: Text('Enter feets'),
                      prefixIcon: Icon(Icons.height),
                    ),
                    keyboardType: TextInputType.number,
                  ),

                  const SizedBox(width: 10),

                  TextField(controller: inController,
                    decoration: const InputDecoration(
                      label: Text('Enter inches'),
                      prefixIcon: Icon(Icons.height),
                    ),
                    keyboardType: TextInputType.number,
                  ),

                  const SizedBox(height: 20),

                  ElevatedButton(onPressed:(){

                    var weight = weightController.text.toString();
                    var feet = ftController.text.toString();
                    var inch = inController.text.toString();

                    if (weight != "" && feet != "" && inch != "") {
                      var intWeight = int.parse(weight);
                      var intFeet = int.parse(feet);
                      var intInch = int.parse(inch);

                      var totalInches = (intFeet * 12) + intInch;

                      var meters = (totalInches * 2.54) / 100;

                      var bmi = intWeight/ (meters * meters);

                      if (bmi > 25) {
                        bgColor = Colors.red.shade200;

                      } else if (bmi < 18) {
                        bgColor = Colors.yellow.shade200;

                      } else {
                        bgColor = Colors.green.shade200;
                      }



                      setState(() {
                        result = 'Your BMI is ${bmi.toStringAsFixed(2)}';
                      });



                    } else {
                      setState(() {
                        result = 'Please fill all required Fields';
                      });
                    }

                  }, child: const Text('Calculate')),

                  Text(result,style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent.shade200),),

                ],
              ),
            ),
          ),
        )
    );
  }
}
