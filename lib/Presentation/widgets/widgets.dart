import 'package:flutter/material.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({Key? key}) : super(key: key);

  @override
  MyCalculatorState createState() => MyCalculatorState();
}

class MyCalculatorState extends State<MyCalculator> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text field for weight
        TextField(
          style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          controller: wtController,
          cursorColor: const Color.fromARGB(255, 255, 255, 255),
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)), borderSide: BorderSide(color: Colors.white)),
            label: Text('Enter your weight',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
            prefixIcon: Icon(Icons.line_weight,
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
        const SizedBox(height: 5),

        // Text field for height in feet
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            cursorColor: const Color.fromARGB(255, 255, 255, 255),
            controller: ftController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)), borderSide: BorderSide(color: Colors.white)),
              label: Text(
                'Enter your Height (in Feet)',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
              prefixIcon:
                  Icon(Icons.height, color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
        ),
        const SizedBox(height: 5),

        // Text field for height in inches
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: inController,
            cursorColor: const Color.fromARGB(255, 255, 255, 255),
            style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)), borderSide: BorderSide(color: Colors.white)),
              label: Text(
                'Enter your Height (in inches)',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
              prefixIcon:
                  Icon(Icons.height, color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
        ),

        // Calculate button
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: () {
              // Get values from text controllers
              var wt = wtController.text;
              var ft = ftController.text;
              var inches = inController.text;

              if (wt != '' && ft != '' && inches != '') {
                // BMI Calculation - Perform your BMI calculation here based on wt, ft, inches

                //iwt means int weight and its converted from string to int below
                var iwt = int.parse(wt);
                var ift = int.parse(ft);
                var iInch = int.parse(inches);

                //logic for conversion the values
                //total inches total centemeter and total meter
                var tInch = (ift * 12) + iInch;
                var tCm = tInch * 2 * 2.5;
                var tM = tCm / 100;
                var bmiResult = iwt / (tM * tM); // BMI calculation logic
                
                var msg= '';
                if (bmiResult>25){
                msg = "You're OverWeight!!"; 
                }
                else if (bmiResult<18){
                msg = "You're UnderWeight!!"; 
                }
                else{
                  msg = "You're Healthy!! ";
                }
                setState(() {
                  result =
                      '$msg \n Your BMI is: ${bmiResult.toStringAsFixed(4)}'; //for decimales value upto 4 digits
                });
              } else {
                setState(() {
                  result = 'please fill all the required blanks';
                });
              }
            },
            style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(Colors.deepOrange.shade600),
            ),
            child: const Text(
              'Calculate',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),

        // Display result
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            result,
            style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
      ],
    );
  }
}
