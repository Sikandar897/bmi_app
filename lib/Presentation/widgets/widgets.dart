import 'package:flutter/material.dart';

/* MyTextField Class Contain all Textfield of UI*/

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    //weight
    var wtController = TextEditingController();
    //feet
    var ftController = TextEditingController();
    //inches
    var inController = TextEditingController();

    return Column(
      children: [
        /* Weight text field */

        TextField(
          controller: wtController,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
              label: Text('Enter your weight'),
              prefixIcon: Icon(Icons.line_weight)),
        ),
        
        const SizedBox(height: 5,), 
        
        /* Height text field */
        TextField(
          controller: ftController,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
              label: Text('Enter your Height (in Feet)'),
              prefixIcon: Icon(Icons.height)),
        ),


        const SizedBox(height: 5,), 

        /* inches text field */

        TextField(
          controller: inController,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
              label: Text('Enter your Height (in inches)'),
              prefixIcon: Icon(Icons.height)),
              
        )
      ],
    );
  }
}

/* MyButton Class Contain button for UI*/

class MyButton extends StatelessWidget {
  const MyButton({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blue)),
        child: const Text(
          'Calculate',
          style: TextStyle(color: Colors.white),
        ));
  }
}
