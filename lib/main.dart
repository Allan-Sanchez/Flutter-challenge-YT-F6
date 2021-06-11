import 'package:flutter/material.dart';
// router
import 'package:challenge_yt/home_page.dart';
import 'package:challenge_yt/apps/coffe/pages/coffe_home.dart';
import 'package:challenge_yt/apps/listScroll/pages/list_scroll_home.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'home' : (BuildContext context) => HomePage(),
        'listscroll/home'  : (BuildContext context) => ListScrollHome(),
        'coffe/home'  : (BuildContext context) => CoffeHome() 
      },
    );
  }
}