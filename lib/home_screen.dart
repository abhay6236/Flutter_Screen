import 'package:flutter/material.dart';
import 'package:mobile_screen/fourth_screen.dart';
import 'package:mobile_screen/third_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    // Add your pages here
    FourPage(),

    FirstPage(),
    FourthScreen(),
    ThirdScreen(),



  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [

          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,color: Colors.deepPurple),
            label: 'My Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.deepPurple,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_rounded,color: Colors.deepPurple,),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_rounded,color: Colors.deepPurple,),
            label: 'My Cards',

          ),
        ],
        selectedItemColor: Colors.deepPurple, // Selected item color
        unselectedItemColor: Colors.black, // Unselected item color
        selectedLabelStyle: TextStyle(color: Colors.deepPurple), // Selected label color
        unselectedLabelStyle: TextStyle(color: Colors.black), // Unselected label color
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Page'),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Fund Transfer Page'),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('BillPay Page'),
    );
  }
}

class FourPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('mPassbook Page'),
    );
  }
}


