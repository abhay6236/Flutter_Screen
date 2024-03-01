
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_screen/dice_photo_change.dart';

class BirthdayCard extends StatefulWidget {
  @override
  _BirthdayCardState createState() => _BirthdayCardState();
}

class _BirthdayCardState extends State<BirthdayCard> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.all(16.0),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.cake,
                size: 50.0,
                color: Colors.blue,
              ),
              SizedBox(height: 16.0),
              Text(
                'Happy Birthday,',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Enter Name',
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Wishing you a day filled with joy and happiness, ${nameController.text}!',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Add your birthday wish logic here
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(

                        title: Text('Best Wishes!'),

                        content: Text('${nameController.text} Happy Birthday to my amazing best friend! Your friendship is a treasure, and I cherish every moment of laughter, support, and adventures we\'ve shared. You\'re more than just a friend, you\'re family. May your birthday be as fantastic and special as you are, filled with joy, love, and endless happy moments, '),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Close'),
                          ),
                        ],

                      );
                    },
                  );
                },
                child: Text('Send Best Wishes'),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return HomePage();
                  },));
                },
                child: Container(
                height: 50,
                width: 300,
                  child: Center(child: Text("Dice project",style: GoogleFonts.ubuntuMono(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 35))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}