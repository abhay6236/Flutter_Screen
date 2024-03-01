import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_screen/third_screen.dart';

class ChekBalance extends StatefulWidget {
  @override
  State<ChekBalance> createState() => _ChekBalanceState();
}

class _ChekBalanceState extends State<ChekBalance> {
  TextEditingController _textFieldController = TextEditingController();

  final List<String> imageUrls = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTe5G-pe45hHJbI7cyCI7Xp3pgzHm4DThbygA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3BFqU_NnMGwXKs16A5d76tZJV7DNpa-4VDQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7yuAZTs6wuO8_6UdPBGHJO-UuvRm8tSBUBw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsb6jLvUGWFD5q3-agoiXD81OX1NrM-3d9gw&usqp=CAU"
  ];

  int currentIndex = 0;
  late PageController _pageController;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: currentIndex);
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (currentIndex < imageUrls.length - 1) {
        currentIndex++;
      } else {
        currentIndex = 0;
      }
      _pageController.animateToPage(
        currentIndex,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const IconData currency_rupee_outlined =
        IconData(0xf05db, fontFamily: 'MaterialIcons');
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: Container(
              child: Image.asset(
                "assets/images/background.jpg",
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(MaterialPageRoute(
                          builder: (context) {
                            return ThirdScreen();
                          },
                        ));
                      },
                      child: Icon(Icons.keyboard_arrow_left,
                          color: Colors.white, size: 25),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Center(
                          child: Text("Balance",
                              style: GoogleFonts.lexend(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: SizedBox(
                  width: 400,
                  height: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.white),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Icon(currency_rupee_outlined),
                          ),
                        ),
                        AnimatedTextKit(
                          animatedTexts: [
                            WavyAnimatedText(
                              '20,20,20,20',
                              textStyle: GoogleFonts.lexend(
                                color: Colors.deepPurple,
                                fontSize: 25,
                              ),
                            ),
                          ],
                          repeatForever: false,
                          totalRepeatCount: 1,
                          onTap: () {
                            print("Tap Event");
                          },
                        ),
                        Expanded(
                          child: Container(
                            child: Icon(Icons.account_balance_wallet,
                                color: Colors.deepPurple, size: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white),
                margin: EdgeInsets.all(20),
                child: SizedBox(
                  width: 400,
                  height: 270,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 10),
                            child: Text("Add Money to",
                                style: GoogleFonts.lexend(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(" Wallet",
                                style: GoogleFonts.lexend(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: TextField(
                          controller: _textFieldController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              prefixIcon: Icon(currency_rupee_outlined),
                              hintText: "1,000",
                              suffixText: "Apply Promoo"),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.deepPurple,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                child: Text("100",
                                    style: GoogleFonts.lexend(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.white)),
                                onPressed: () {
                                  setState(() {
                                    _textFieldController.text = '100';
                                  });
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.deepPurple,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                child: Text("200",
                                    style: GoogleFonts.lexend(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.white)),
                                onPressed: () {
                                  setState(() {
                                    _textFieldController.text = '200';
                                  });
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.deepPurple,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                child: Text("1000",
                                    style: GoogleFonts.lexend(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.white)),
                                onPressed: () {
                                  setState(() {
                                    _textFieldController.text = '1000';
                                  });
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.deepPurple,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                child: Text("2000",
                                    style: GoogleFonts.lexend(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.white)),
                                onPressed: () {
                                  setState(() {
                                    _textFieldController.text = '2000';
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(20),
                          child: SizedBox(
                            width: 400,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  backgroundColor: Colors.deepPurple),
                              onPressed: () {
                                print("===add===\$\$\$\===");
                              },
                              child: Text(
                                "PROCEDD TO ADD MONEY",
                                style: GoogleFonts.lexend(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: SizedBox(
                    height: 100,
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: imageUrls.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image.network(
                            imageUrls[index],
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                          ),
                        );
                      },
                      onPageChanged: (index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
