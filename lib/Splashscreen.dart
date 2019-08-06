import 'package:flutter/material.dart';
import 'dart:async';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  bool firstStateEnabled = true;

  @override
  void initState() { 
    super.initState();
    

      Timer(Duration(milliseconds: 1000), () {

           firstStateEnabled = false;
                setState(() {});

      });

    Timer(Duration(milliseconds: 3000), () {
   
       Navigator.of(context).pushNamed('/catalog');

     });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        
          children: <Widget>[
          
            AnimatedCrossFade(
             
              firstChild: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircularProgressIndicator(),
                ),
                height: 200.0,
                width: 200.0,
              ),


             secondChild: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlutterLogo(),
                ),
                height: 200.0,
                width: 200.0,
              ),


              crossFadeState: firstStateEnabled
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
          
          
              duration: Duration(milliseconds: 1200), 
           ),

            Padding(
          
            padding: const EdgeInsets.all(32.0),
              child : Container(
              
                child : Text("FLUTTER COOKBOOK", 
                        textAlign: TextAlign.center, 
                        style: TextStyle(fontSize: 25),
                        
                ),
                
                margin: EdgeInsets.only(top:60),
                alignment: Alignment.bottomCenter,

           ),
            
            ),
            // Padding(
            //   padding: const EdgeInsets.all(32.0),
              
            //   child: FlatButton(
            //     onPressed: () {
            //       firstStateEnabled = true;
            //     },
                
            //     color: Colors.blue,
            //     child: Text(
            //       "Trigger crossfade",
            //       style: TextStyle(
            //         fontSize: 20.0,
            //         color: Colors.white,
            //       ),

            //     ),
            //   ),
            // ),
          ],
          
        
        ),
      
      ),
    );
  }
}


