import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

var PrimaryColour = HexColor("#EE9273");
var Grey = HexColor("#A67C52");

ThemeData darkTheme = ThemeData(
  primaryColor: PrimaryColour,
    scaffoldBackgroundColor: Color.fromARGB(255, 12, 24, 72),
    useMaterial3: true,
    primarySwatch: Colors.brown,
    textTheme: const TextTheme(
        bodyLarge: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold

        )
    ),
    fontFamily:"BackHome" ,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: PrimaryColour,
        unselectedItemColor: Colors.grey,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 20,
        type: BottomNavigationBarType.fixed),
    appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 250, 250, 250),
            fontSize: 20),
        actionsIconTheme: IconThemeData(
            color: Color.fromARGB(255, 255, 255, 255), size: 28),
        backgroundColor: Color.fromARGB(255, 12, 24, 72),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
          statusBarColor: Color.fromARGB(255, 12, 24, 72),
        )));

ThemeData lightTheme = ThemeData(
    primaryColor: PrimaryColour,
    useMaterial3: true,
    primarySwatch: Colors.brown,
    textTheme: const TextTheme(
        bodyLarge: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        )
    ),
    fontFamily:"BackHome",
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: PrimaryColour,
        unselectedItemColor: Colors.grey,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 20,
        type: BottomNavigationBarType.fixed),
    appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 12, 24, 72),
            fontSize: 20),
        actionsIconTheme: IconThemeData(
            color: Color.fromARGB(255, 12, 24, 72), size: 28),
        backgroundColor:const  Color.fromARGB(255, 255, 255, 255),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Color.fromARGB(255, 255, 255, 255),
        )));


