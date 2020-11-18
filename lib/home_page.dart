import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
           image: AssetImage('assets/images/home_page_light.PNG'),fit: BoxFit.cover)),
         child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
               Center(
                 child: Padding(
                   padding: const EdgeInsets.only(top: 600.0),
                   child: MaterialButton(
                     onPressed: () => Navigator.pushNamed(context,'/TranslateMorsetoEnglish'),
                     color: HexColor('#F5D848'),
                     height: 70.0,
                     minWidth: 200.0,
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(18.0),
                     ),
                     child:Text(
                          'Start',
                          style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w500
                          ),
                          textAlign:TextAlign.center,
                          ),
                       ),
                 ),
               ),
                 ],
           ),
      ),
    )
    )
    );
  }
}
