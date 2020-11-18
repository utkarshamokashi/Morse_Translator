import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TranslationInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home : Scaffold(
          appBar : AppBar(
            backgroundColor: Colors.white,
            title:Center(child: Text('The Translations!',style: TextStyle(color: Colors.black, fontSize: 30.0),)),
            leading:  IconButton(
              icon: Icon(Icons.arrow_back_ios, size: 40,color: Colors.black,),
              onPressed: () => Navigator.pop(context),
            ),),
          body: Padding(
            padding: const EdgeInsets.only(top: 50.0),
          child: Container(
           child: Image.asset('assets/images/translation_light.png'),
          ),
          ),
      ),
      ),
    );
  }
}
