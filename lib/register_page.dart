import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_screen/third_screen.dart';

class RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text("Register",
                style: GoogleFonts.lexend(
                    color: Colors.deepPurple,
                    fontSize: 25,
                    fontWeight: FontWeight.bold))),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_box_rounded,
                      color: Colors.deepPurple, size: 25),
                  fillColor: Colors.white,
                  focusColor: Colors.deepPurple,
                  filled: true,
                  hintStyle: TextStyle(fontSize: 15),
                  hintText: "Enter Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                onChanged: (value) {},
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon:
                      Icon(Icons.call, color: Colors.deepPurple, size: 25),
                  fillColor: Colors.white,
                  focusColor: Colors.deepPurple,
                  filled: true,
                  hintStyle: TextStyle(fontSize: 15),
                  hintText: "Enter Mobile No:",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                onChanged: (value) {},
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.date_range,
                      color: Colors.deepPurple, size: 25),
                  fillColor: Colors.white,
                  focusColor: Colors.deepPurple,
                  filled: true,
                  hintStyle: TextStyle(fontSize: 15),
                  hintText: "DOB",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                onChanged: (value) {},
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              width: MediaQuery.of(context).size.width * 0.8,
              child: PasswordField(),
            ),
            Container(

              child: Center(
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(

                            borderRadius: BorderRadius.circular(10)),
                        shadowColor: Colors.black,
                        elevation: 8,

                        backgroundColor: Color.fromRGBO(157, 8, 225, 1)),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        return ThirdScreen();
                      },));
                    },
                    child: Text('Submit',
                        style: GoogleFonts.lexend(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;
  TextEditingController _passwordController = TextEditingController();
  bool _isPasswordValid = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _obscureText,
      controller: _passwordController,
      decoration: InputDecoration(
        focusColor: Colors.deepPurple,
        filled: true,
        prefixIcon: Icon(Icons.key, color: Colors.deepPurple, size: 25),
        fillColor: Colors.white,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        hintText: "Enter Password",
        hintStyle: TextStyle(fontSize: 15),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
      ),
      onChanged: (value) {
        if (value.length >= 6) {
          setState(() {
            _isPasswordValid = true;
          });
        } else {
          setState(() {
            _isPasswordValid = false;
          });
        }
      },
    );
  }
}
