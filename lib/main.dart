import 'package:flutter/material.dart';
import 'package:news_app_mvm/news_detials/view/screen/news_detials_screen.dart';
import 'package:news_app_mvm/shared/app_theme.dart';
import 'package:news_app_mvm/home/view/screens/home_screen.dart';

void main() {
  runApp(const NewsAppMvm());
}

class NewsAppMvm extends StatelessWidget {
  const NewsAppMvm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        homeScreen.routeName:(_)=>homeScreen(),
        newsDetialsScreen.routeName:(_)=>newsDetialsScreen(),
      },
      initialRoute:homeScreen.routeName ,
theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
    );
  }
}

