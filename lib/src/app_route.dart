import 'package:couter_bloc/src/pages/another_page.dart';
import 'package:couter_bloc/src/pages/home_page.dart';
import 'package:flutter/cupertino.dart';

class AppRoute{
  static const home ='home';
  static const another ='another';
  final _route = <String,WidgetBuilder>{
    home:(context) => MyHomePage(title: "MyHomePage"),
    another:(context) => AnotherPage(title: "AnotherPage",),
    
  };
  get getAll => _route;
}