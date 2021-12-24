import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int answerNumber = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Center(child: Text('Magic 8 Ball')),
        ),
        body: SafeArea(
          child: Center(
            child: TextButton(
              child: Image.asset('images/ball$answerNumber.png'),
              onPressed: (){
                Answer();
              },
            ),
          ),
        ),
      ),
    );
  }

  void Answer(){
    setState((){
      answerNumber = Random().nextInt(5) + 1;
    });
  }
}

