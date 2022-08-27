import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;
  void rollTheDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade900,
      appBar: AppBar(
        backgroundColor: Colors.red.shade800,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/dice.png',
              width: 50,
            ),
            SizedBox(
              width: 20,
            ),
            Text('dicee'),
            SizedBox(
              width: 20,
            ),
            Image.asset(
              'images/dice.png',
              width: 50,
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/dice.png',
                width: 150,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Roll The Dice',
                style: TextStyle(
                  fontFamily: "GB",
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: rollTheDice,
                      child: Image.asset('images/dice$leftDiceNumber.png'),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: rollTheDice,
                      child: Image.asset('images/dice$rightDiceNumber.png'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
