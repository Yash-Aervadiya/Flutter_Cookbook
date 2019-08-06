 import 'package:flutter/material.dart';
import 'package:flutter_cookbook/route_generator.dart';



void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'CookBook',
      debugShowCheckedModeBanner: false,


      initialRoute: '/',

      onGenerateRoute: RouteGenerator.generateRoute,

    );
  }
}


