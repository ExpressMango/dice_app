import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftdiceno = 3;
  int righttdiceno = 3;
  int DiceTotalNumber = 7;
  void ChangeDiceFace() {
    setState(() {
      leftdiceno = Random().nextInt(6) + 1;

      righttdiceno = Random().nextInt(6) + 1;

      DiceTotalNumber = leftdiceno + righttdiceno;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text('Random dice'),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    child: Image.asset('images/dice$leftdiceno.png'),
                    onTap: () {
                      ChangeDiceFace();
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    child: Image.asset('images/dice$righttdiceno.png'),
                    onTap: () {
                      ChangeDiceFace();
                    },
                  ),
                ),
              ),
            ],
          ),
          Text(
            'You Got A: $DiceTotalNumber',
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }
}
