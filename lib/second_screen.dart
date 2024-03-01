import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_screen/splash_screen_first.dart';
import 'package:mobile_screen/third_screen.dart';

import 'need_help.dart';

class SecondSplashScreen extends StatefulWidget {
  @override
  State<SecondSplashScreen> createState() => _SecondSplashScreenState();
}

bool passvisible = true;

class _SecondSplashScreenState extends State<SecondSplashScreen> {
  List<Map<String, dynamic>> userList = [
    {"demo123@gmail.com": "12345"}
  ];

  TextEditingController _userIdController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            child: Image.asset(
              "assets/images/background.jpg",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text("Log In",
                    style: GoogleFonts.lexend(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          Column(
            children: [
              Center(
                child: Container(

                  child: Image.asset("assets/images/user.png",
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width * 0.5),
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextField(
                    controller: _userIdController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_box_rounded,
                          color: Colors.deepPurple, size: 25),
                      fillColor: Colors.white,
                      focusColor: Colors.deepPurple,
                      filled: true,
                      hintStyle: TextStyle(fontSize: 15),
                      hintText: "Mobile No/User ID",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    onTap: () {},
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextField(
                    controller: _passwordController,
                    obscureText: passvisible,
                    decoration: InputDecoration(
                        focusColor: Colors.deepPurple,
                        filled: true,
                        prefixIcon:
                            Icon(Icons.key, color: Colors.deepPurple, size: 25),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        hintText: "Enter Password",
                        hintStyle: TextStyle(fontSize: 15),
                        suffixIcon: IconButton(
                          icon: Icon(passvisible
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              passvisible = !passvisible;
                            });
                          },
                        )),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Container(
                    child: Text("Forget Password?",
                        style: GoogleFonts.lexend(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Center(
                    child: Container(
                      height: 50,
                      width: 320,

                      child: ElevatedButton(

                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.black,
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Color.fromRGBO(157, 8, 225, 1)),
                        onPressed: () {
                          bool flag = true;
                          for (int i = 0; i < userList.length; i++) {
                            if (userList[i]
                                    .containsKey(_userIdController.text) &&
                                userList[i]
                                    .containsValue(_passwordController.text)) {
                              flag = true;
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return ThirdScreen();
                                },
                              ));
                            } else {
                              flag=false;

                            }
                          }
                          if(flag==false){
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text("Login Failed",
                                      style: GoogleFonts.lexend(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  content: Text(
                                      'Invalid username or password. Please try again.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('OK'),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        },
                        child: Text('Log in',
                            style: GoogleFonts.lexend(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return NeedHelp();
                        },
                      ));
                    },
                    child: Text('Need help?',
                        style: GoogleFonts.daiBannaSil(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.grey)),
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
