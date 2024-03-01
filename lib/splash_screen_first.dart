import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_screen/register_page.dart';
import 'package:mobile_screen/second_screen.dart';

import 'need_help.dart';

class FirstSplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 8,
                  offset: Offset(8,12),
                )
              ]
            ),
            child: Image.asset(
              "assets/images/background.jpg",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Color(0xf999999),
          ),
          Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Image.asset("assets/images/logo.png",

                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width * 0.6),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    child: Text("Bank",
                        style: GoogleFonts.lexend(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    child: Text("App",
                        style: GoogleFonts.lexend(
                            fontSize: 50,

                            color: Colors.white)),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Center(
                    child: Container(
                      height: 50,
                      width: 250,
                      child: ElevatedButton(

                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(

                                borderRadius: BorderRadius.circular(10)),
                            shadowColor: Colors.black,
                            elevation: 8,

                            backgroundColor: Color.fromRGBO(157, 8, 225, 1)),
                        onPressed: () {
                           Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return SecondSplashScreen();
                           },));
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
                child: Center(
                  child: Container(
                    child: Container(
                      height: 50,
                      width: 250,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.black,
                            elevation: 8,

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Colors.white),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return RegisterForm();
                          },));
                        },
                        child: Text('Register',
                            style: GoogleFonts.lexend(
                                color: Colors.black54,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        return NeedHelp();
                      },));
                    },
                    child: Text('Need help?',
                        style: GoogleFonts.lexend(
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
