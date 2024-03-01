import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Random random = Random();
  int currentImageIndex = 0;
  int counter = 1;
  List<String> images = [
    'diceimages/dice_1.png',
    'diceimages/dice_2.png',
    'diceimages/dice_3.png',
    'diceimages/dice_4.png',
    'diceimages/dice_5.png',
    'diceimages/dice_6.png',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dice Roll'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Transform.rotate(
                angle: random.nextDouble() * 180,
                child: Image.asset(
                  images[currentImageIndex],
                  height: 100,
                ),
              ),
              const SizedBox(height: 60),
              ElevatedButton(
                onPressed: () async {
                  // Rolling the dice

                  // Sound


                  // Roll the dice
                  Timer.periodic(const Duration(milliseconds: 80), (timer) {
                    counter++;
                    setState(() {
                      currentImageIndex = random.nextInt(6);
                    });

                    if (counter >= 13) {
                      timer.cancel();

                      setState(() {
                        counter = 1;
                      });
                    }
                  });
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Roll',
                    style: TextStyle(fontSize: 26),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
