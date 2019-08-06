import 'package:flutter/material.dart';
import 'package:flutter_cookbook/Splashscreen.dart';
import 'package:flutter_cookbook/catalog.dart';
import 'package:flutter_cookbook/main.dart';
import 'package:flutter_cookbook/ListofDemos.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Splashscreen());

      case '/catalog':
         return MaterialPageRoute(builder: (_) => Catalog());


      case '/ListofDemos':

        if (args is int) {
          return MaterialPageRoute(
            builder: (_) => ListofDemos(i : args,),
          );
        }

        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.

        
        return _errorRoute();
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}