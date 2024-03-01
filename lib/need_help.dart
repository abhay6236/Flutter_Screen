import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NeedHelp extends StatelessWidget {  @override
  Widget build(BuildContext context) {
  return Scaffold(
     appBar: AppBar(
       title: Center(child: Text("Help?",style: GoogleFonts.lexend(color: Colors.deepPurple,fontWeight: FontWeight.bold,fontSize: 20))),
     ),
     body: Stack(
       children: [
         Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Center(
               child: Container(
                 child: Text('  Please kindly visit to our \n     Branch and contact, ',style: GoogleFonts.lexend(fontWeight: FontWeight.bold,fontSize: 20)),
               ),
             ),
             Center(
               child: Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [

                      Icon(Icons.call,color: Colors.deepPurple),
                      SizedBox(width: 5,),
                       Text("+91 12345 98745",style: GoogleFonts.lexend(fontSize: 20),)


                     ],
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [

                       Icon(Icons.call,color: Colors.deepPurple),
                       SizedBox(width: 5,),
                       Text("+91 99889 77655",style: GoogleFonts.lexend(fontSize: 20,),)


                     ],
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [

                       Icon(Icons.mail,color: Colors.deepPurple),
                       SizedBox(width: 5,),
                       Text("bankapp@darshan.ac.xyz",style: GoogleFonts.lexend(fontSize: 20),)


                     ],
                   ),
                 ],
               ),
             ),
           ],
         ),
       ],
     ),
  );
  }
}
