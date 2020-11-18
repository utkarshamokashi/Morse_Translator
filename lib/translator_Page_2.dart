import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

final _scaffoldKey = new GlobalKey<ScaffoldState>();

var a;
class TranslatorPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
          resizeToAvoidBottomPadding: false,
          key: _scaffoldKey,
          appBar: AppBar(
            centerTitle: true,
            title: Text('Morse Translator', style: TextStyle(color: Colors.black, fontSize: 30.0)),
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(Icons.menu, size: 40,color: Colors.black,), // change this size and style
              onPressed: () => _scaffoldKey.currentState.openDrawer(),
            ),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                SizedBox(
                  height: 90.0,
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 30.0,
                ),
                ListTile(
                  leading: Icon(Icons.brightness_medium, size: 40.0, color: Colors.black,),
                  title: Text('Mode Switch',style: TextStyle(fontSize: 30.0)),
                ),
                SizedBox(
                  height: 30.0,
                ),
                ListTile(
                  leading: Icon(Icons.info, size: 40.0,color: Colors.black,),
                  title: Text('About',style: TextStyle(fontSize: 30.0)),
                    onTap: () => Navigator.pushNamed(context, 'Translations')
                ),
                SizedBox(
                  height: 30.0,
                ),
                ListTile(
                    leading: Icon(Icons.assignment, size: 40.0,color: Colors.black,),
                    title: Text('Learn how to translate!',style: TextStyle(fontSize: 25.0)),
                    onTap: () => Navigator.pushNamed(context, 'Translations')
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              SizedBox(
                height: 100.0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        width: 139.0,
                        height: 155.0,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(30.0, 10.0, 0.0, 0.0),
                          child: Text('English', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w500),),
                        ),
                        decoration: BoxDecoration(
                          color: HexColor('#5B6F73'),
                          borderRadius: BorderRadius.all(Radius.circular(18.0),),
                          boxShadow: [
                            BoxShadow(color: Colors.black, spreadRadius: 1),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,top: 40.0),
                      child: Container(
                        width: 384.0,
                        height: 362.0,
                        child: TextField(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                          onChanged: (value) {
                            a = value;
                          },
                          decoration: InputDecoration(
                            hintStyle: TextStyle(fontSize: 25,color: Colors.white),
                            hintText: 'Enter your Text',
                            suffixIcon: Container(child: IconButton(icon: Icon(Icons.send),color: Colors.white, onPressed: (){})),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(50),
                          ),
                        ),
                        decoration: BoxDecoration(
                          //color: HexColor('#DFDC3B'),
                          borderRadius: BorderRadius.all(Radius.circular(18.0)),
                          gradient: LinearGradient(
                            colors: <Color>[
                              HexColor('#678389'),
                              HexColor('#648085'),
                              HexColor('#4E6367'),
                              HexColor('#344245'),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(color: Colors.black, spreadRadius: 1),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,left: 290,
                      child: RaisedButton(
                        padding: EdgeInsets.all(12.0),
                        shape: CircleBorder(
                          side: BorderSide(color: Colors.tealAccent),
                        ),
                        child: Column( // Replace with a Row for horizontal icon + text
                          children: <Widget>[
                            Icon(Icons.content_copy,size: 25),
                          ],
                        ),
                        onPressed: () => Clipboard.setData(
                      new ClipboardData(text: "$a")),
                        color: Color(0xffC9F2DB),
                      ),
                    ),
                    /*Positioned(
                      top: 140,left: 290,
                      child: RaisedButton(
                        padding: EdgeInsets.all(17.0),
                        child: Container(
                          child: Row(
                            children: [
                              Icon(Icons.send),
                            ],
                          ),
                        ),
                        onPressed: () {},
                        color: Colors.transparent,
                      ),
                    ),*/
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,top: 190.0),
                      child: Container(
                        width: 139.0,
                        height: 155.0,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                          child: Text('Morse Code', style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w500),),
                        ),
                        decoration: BoxDecoration(
                          color: HexColor('#DFDC3B'),
                          borderRadius: BorderRadius.all(Radius.circular(18.0),),
                          boxShadow: [
                            BoxShadow(color: Colors.black, spreadRadius: 1),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,top: 230.0),
                      child: Container(
                        width: 384.0,
                        height: 362.0,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                        ),
                        decoration: BoxDecoration(
                          //color: HexColor('#678389'),
                          borderRadius: BorderRadius.all(Radius.circular(18.0)),
                          gradient: LinearGradient(
                            colors: <Color>[
                              HexColor('#FCEF87'),
                              HexColor('#FCFC33'),
                              HexColor('#F8E020'),
                              HexColor('#F1E058'),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(color: Colors.black, spreadRadius: 1),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 210,left: 290,
                      child: RaisedButton(
                        padding: EdgeInsets.all(12.0),
                        shape: CircleBorder(
                          side: BorderSide(color: Colors.tealAccent),
                        ),
                        child: Column( // Replace with a Row for horizontal icon + text
                          children: <Widget>[
                            Icon(Icons.content_copy,size: 25,),
                          ],
                        ),
                        onPressed: () {},
                        color: Color(0xffC9F2DB),
                      ),
                    ),
                    Positioned(
                      top: 210,left: 175,
                      child: RaisedButton(
                        padding: EdgeInsets.all(17.0),
                        shape: CircleBorder(
                          side: BorderSide(color: Colors.tealAccent),
                        ),
                        child: Container(
                          child: Row(
                            children: [
                              Icon(Icons.import_export, size: 25.0,),
                            ],
                          ),
                        ),
                        onPressed: () => Navigator.pushNamed(context,'/TranslateMorsetoEnglish'),
                        color: Color(0xffC9F2DB),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 500.0),
                      child: Row(
                        children: [
                          MaterialButton(
                            onPressed: () => Navigator.pushNamed(context,'/factsPage'),
                            color: HexColor('#678389'),
                            height: 70.0,
                            minWidth: 140.0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),),
                            child:Text('Facts', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500), textAlign:TextAlign.center,),
                          ),
                          SizedBox(
                            width: 131.0,
                          ),
                          MaterialButton(
                            onPressed: () => Navigator.pushNamed(context,'/historyPage'),
                            color: HexColor('#678389'),
                            height: 70.0,
                            minWidth: 140.0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),),
                            child:Text('History', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500), textAlign:TextAlign.center,),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
