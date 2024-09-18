import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppTheme{
static Color primary=Color(0xFF39A552);
static Color red=Color(0xFFC91C22);
static Color yellow=Color(0xFFF2D352);
static Color brown=Color(0xFFCF7E48);
static Color blue=Color(0xFF003E90);
static Color lightBlue=Color(0xFF4882CF);
static Color pink=Color(0xFFED1E79);
static Color navy=Color(0xFF4F5A69);
static Color grey=Color(0xFF79828B);
static Color black=Color(0xFF42505C);
static Color white=Color(0xFFFFFFFF);
static ThemeData lightTheme=ThemeData(
  scaffoldBackgroundColor: Colors.transparent,
  textTheme: TextTheme(
    headlineLarge: TextStyle(
      color: navy,
      fontSize:22 ,
      fontWeight: FontWeight.bold
    ),
    headlineSmall: TextStyle(
      color: grey,
      fontSize: 10
    ),
    headlineMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
      color: black
    ),
    titleMedium: TextStyle(
        color: white,
        fontFamily: 'Exo',
        fontWeight: FontWeight.w400,
        fontSize: 22
    ),
    titleLarge: TextStyle(
      color: black,
      fontFamily: '',
fontWeight: FontWeight.bold,
      fontSize: 24
    )
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusDirectional.only(
topEnd: Radius.zero,
      topStart: Radius.zero,
        bottomStart: Radius.circular(50),
        bottomEnd: Radius.circular(50)
      )
    ),
    iconTheme: IconThemeData(
      color: white,
      size: 20,
    ),
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: white,
      fontSize: 22,
      fontFamily: 'Exo',
      fontWeight: FontWeight.w400
    )
  )
);

}