import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_screen/fourth_screen.dart';


import 'check_balance.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  List imagList = [
    {"id": 1,"image_path":"assets/images/frant_atmcard.jpg"},
    {"id": 2,"image_path":"assets/images/atm_card_front.jpg"}
  ];
 final CarouselController caurouselcontroller = CarouselController();

  bool isCardRotated = false;
  final String earnMoney = "https://mypat.in/refer-friend";
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Column(
            children: [
              Row(
                
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios,
                        size: 20,
                        color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(

                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text("My Cards",
                          style: GoogleFonts.lexend(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      child: InkWell(
                        onTap: () {

                        },
                        child: Icon(Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 20),
                      ),
                    ),
                  ),

                ],
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isCardRotated = !isCardRotated;
                    });
                  },
                  child: Container(
                    child: Transform.rotate(
                      angle: isCardRotated ? 6.285714285714286 : 0,
                      child: Image.asset(
                        isCardRotated
                            ? "assets/images/backside_atm.jpg" // Back side image
                            : "assets/images/frant_atmcard.jpg", // Front side image
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: MediaQuery.of(context).size.width * 0.9,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
              margin: EdgeInsets.only(left: 20),
                      child: SizedBox(
                        height: 110,
                        width: 110,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shadowColor: Colors.black,
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: Color.fromRGBO(157, 8, 225, 1)),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return ChekBalance();
                            },));
                          },
                          child: Column(

                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(top: 15),
                                  child: Icon(
                                      Icons.account_balance,
                                      color: Colors.white,
                                      size: 35,
                                
                                    ),
                                  ),
                                ),

                              Expanded(
                                child: Container(
                                  child:  FittedBox(
                                    child: Text('Chek Balance',
                                      style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                    
                            ],
                          ),
                    
                    
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10,right: 10),
                      child: SizedBox(
                        height: 110,
                        width: 110,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shadowColor: Colors.black,
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: Colors.white),
                          onPressed: () {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(top: 15),
                                  child:Icon(
                                      Icons.send_to_mobile,
                                      color: Color.fromRGBO(157, 8, 225, 1),
                                      size: 35,

                                    ),

                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child:  FittedBox(
                                    child: Text('Send Money',
                                      style:TextStyle(color: Color.fromRGBO(157, 8, 225, 1),fontWeight: FontWeight.bold,fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),


                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                margin: EdgeInsets.only(right: 20),
                      child: SizedBox(
                        height: 110,
                        width: 110,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shadowColor: Colors.black,
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: Color.fromRGBO(157, 8, 225, 1)),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return FourthScreen();
                            },));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(top: 15),
                                  child:Icon(
                                      Icons.history_outlined,
                                      color: Colors.white,
                                      size: 35,

                                    ),
                                  ),
                                ),

                              Expanded(
                                child: Container(
                                  child:  FittedBox(
                                    child: Text('Transaction',
                                      style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),


                        ),
                      ),
                    ),
                  ),

                ],
              ),


              Container(
                margin: EdgeInsets.only(top: 30),
                child: SizedBox(
                  width:MediaQuery.of(context).size.width*0.9,
                  height: 90,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.black,
                        elevation: 8,
                        shape: RoundedRectangleBorder(

                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Color.fromRGBO(157, 8, 225, 1)),
                    onPressed: () {},

                    child: Row(
                      children: [

                        Expanded(
                          flex: 3,
                          child: GestureDetector(
                            onTap: () {

                            },

                            child: FittedBox(
                              child: Text('Refer a friend \n & earn a bonus!',
                                  style: GoogleFonts.lexend(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                        Expanded(

                            child: Icon(Icons.monetization_on,size: 55,color: Colors.white,)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 45,
                child:Icon(Icons.keyboard_arrow_down,color: Colors.deepPurple),
              ),
            ],
          ),
        ],
      ),
    );
  }


}


