import 'package:bmi_app/Presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'BMI Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text(widget.title , style: const TextStyle(color: Colors.white)),
        ),
        body: Container(
          color: Colors.white10,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 450,
                decoration: BoxDecoration(
                  color: Colors.deepOrange.shade900,
                  borderRadius: const BorderRadius.all(Radius.circular(21))
                ),
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    /* BMI Title Container Start Here  */
                    
                    Container(
                        width: 280,
                        height: 44,
                        decoration: const BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.elliptical(21, 21),
                                bottomRight: Radius.elliptical(21, 21))),
                        child: const Center(
                            child: Text(
                          'BMI',
                          style: TextStyle(color: Colors.white, fontSize: 32),
                        ))),
                    
                        /* BMI Title Container End Here  */
                    
                    /* MyCalulator Widget */
                    
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: MyCalculator(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
