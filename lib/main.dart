import 'package:flutter/material.dart';
import 'package:flutter_applications_c8/home_screen.dart';
import 'package:flutter_applications_c8/my_theme.dart';
import 'package:flutter_applications_c8/sura_details_screen.dart';

void main(){
  runApp(MyApplication());
}
class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemeData.lightTheme,
      themeMode: ThemeMode.light,
      darkTheme: MyThemeData.darkTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName : (context)=> HomeScreen(),
        SuraDetailsScreen.routeName : (_)=> SuraDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}