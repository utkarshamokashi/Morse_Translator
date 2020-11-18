import 'dart:ui';

import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home : Scaffold(
          appBar : AppBar(
            backgroundColor: Colors.white,
            title:Center(child: Text('History Page',style: TextStyle(color: Colors.black, fontSize: 30.0),)),
            leading:  IconButton(
               icon: Icon(Icons.arrow_back_ios, size: 40,color: Colors.black,), // change this size and style
                   onPressed: () => Navigator.pop(context),
          ),),
            body: Container(
              decoration: new BoxDecoration(image: new DecorationImage(image: new ExactAssetImage('assets/images/morse.png'),),),
              /*child: new BackdropFilter(
                  filter: new ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
               child: new Container(
                 decoration: new BoxDecoration(color: Colors.white.withOpacity(10.0)),),*/
      ),
         ),
        ),
    );
  }
}
