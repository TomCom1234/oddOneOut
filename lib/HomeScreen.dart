import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:odd_one_out/InputScreen.dart';
import 'package:odd_one_out/TutorialScreen.dart';

var inputScreen = new InputScreen();


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
    return new Scaffold(
        backgroundColor: Colors.grey[600],
//        drawer: Drawer(
//        ),
        appBar: AppBar(
          title: Text("Odd One Out", style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.amber[100],
          centerTitle: true,
          automaticallyImplyLeading: false,
         ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    new Container(
                    ),
                    new Container(
                      margin: EdgeInsets.fromLTRB(50, 0, 30, 300),
                      width: 400,
                      height: 400,
                      child: Image(
                        image: AssetImage("assets/Logo.png"),
                      ),
                    ),

                    new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(left: 40.0, right: 0,top: 400.0),
                        child: ButtonTheme(
                            buttonColor: Colors.amberAccent[100],
                            minWidth: 150.0,
                        height: 50.0,
                        child: RaisedButton(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(18.0)
                        ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return InputScreen();
                            }));
                          },
                          child: Text("Start"),
                        )),
                      ),
                        Container(
                          margin: const EdgeInsets.only(left: 35.0, right: 0,top: 400.0),
                          child: ButtonTheme(
                            buttonColor: Colors.amberAccent[100],
                              minWidth: 150.0,
                              height: 50.0,
                              child: RaisedButton(
                                shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(18.0)
                                ),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return TutorialScreen();
                                  }));
                                },
                                child: Text("Tutorial"),
                              )),
                        ),
                       ],
                    )
                  ],
                ),
              ]),
        ));
  }

 }