import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_screen/third_screen.dart';

class FourthScreen extends StatefulWidget {
  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  List<Map<String, dynamic>> transactions = [
    {"date": "21 JAN", "name": "Lorem ipsum", "amount": "+\$92.6"},
    {"date": "21 JAN", "name": "Lorem ipsum", "amount": "-\$82.6"},
    {"date": "20 JAN", "name": "Lorem ipsum", "amount": "+\$92.6"},
    {"date": "19 JAN", "name": "Lorem ipsum", "amount": "+\$55.6"},
    {"date": "1 JAN", "name": "Lorem ipsum", "amount": "-\$2.6"},
    {"date": "20 DEC", "name": "Lorem ipsum", "amount": "-\$111.6"},
    {"date": "2 SEP", "name": "Lorem ipsum", "amount": "+\$2.6"},
    {"date": "4 SEP", "name": "Lorem ipsum", "amount": "+\$22.6"},
    {"date": "3 OCT", "name": "Lorem ipsum", "amount": "-\$2.6"},
    {"date": "21 Nav", "name": "Lorem ipsum", "amount": "+\$92.6"},



    // Add more transactions as needed
  ];

  @override
  Widget build(BuildContext context) {
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
                              Navigator.of(context).pop(MaterialPageRoute(builder: (context) {
                                return ThirdScreen();
                              },));
                      },
                      child: Icon(Icons.keyboard_arrow_left,color: Colors.white,size: 25),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Center(
                          child: Text("Transaction",
                              style: GoogleFonts.lexend(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: transactions.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(top: 30,left: 20,right: 20),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.black,
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {},
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(

                                    child: Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text(
                                          transactions[index]["date"],
                                          style: GoogleFonts.lexend(
                                            color: Colors.deepPurple,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Icon(Icons.add_box_outlined,

                                        color: Colors.grey, size: 20),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(

                                      child: Icon(Icons.account_box,
                                          size: 70),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                    
                                      child: Text(
                                          transactions[index]["name"],
                                          style: GoogleFonts.lexend(
                                            color: Colors.black,
                                    
                                            fontSize: 15,
                                          )),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(
                                          transactions[index]["amount"],
                                          style: GoogleFonts.lexend(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
