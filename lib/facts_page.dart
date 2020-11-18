import 'package:flutter/material.dart';

class FactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home : Scaffold(
          appBar : AppBar(
            backgroundColor: Colors.white,
            title:Center(child: Text('Facts Page',style: TextStyle(color: Colors.black, fontSize: 30.0),)),
            leading:  IconButton(
              icon: Icon(Icons.arrow_back_ios, size: 40,color: Colors.black,), // change this size and style
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
      ),
    );
  }
}
