import 'package:flutter/material.dart';
import 'package:mobile_screen/birthday_card.dart';
import 'package:mobile_screen/check_balance.dart';

import 'package:mobile_screen/home_screen.dart';
import 'package:mobile_screen/need_help.dart';
import 'package:mobile_screen/register_page.dart';
import 'package:mobile_screen/send_money.dart';

import 'package:mobile_screen/splash_screen_first.dart';
import 'package:mobile_screen/fourth_screen.dart';
import 'package:mobile_screen/third_screen.dart';
import 'package:mobile_screen/second_screen.dart';

import 'dice_photo_change.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    home:FirstSplashScreen(),
      //home: BirthdayCard(),
     // home: HomePage(),
   // home: SecondSplashScreen(),
    //home: ThirdScreen(),
    //  home:FourthScreen(),
    //  home: NeedHelp(),
     // home: HomeScreen(),
     // home: RegisterForm(),
      //home: ChekBalance(),
     // home: SendMoneyTo(),



    );
  }
}

