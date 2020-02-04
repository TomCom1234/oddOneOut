import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:flutter/services.dart';
import 'package:odd_one_out/AnimalRevealScreen.dart';
import 'package:odd_one_out/AnimalRevealScreen6.dart';
import 'package:odd_one_out/InputScreen.dart';
import 'package:odd_one_out/Question%201.dart';
import 'package:odd_one_out/TutorialScreen.dart';

var inputScreen = new InputScreen();


class RevealScreenP6 extends StatelessWidget {
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
          automaticallyImplyLeading: false,
          title: Text("Reveal Word", style: TextStyle(fontSize: 30.0,color: Colors.black),),
          backgroundColor: Colors.amber[100],
          centerTitle: true,
          iconTheme: new IconThemeData(color: Colors.black),
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
                      margin: EdgeInsets.fromLTRB(130, 0, 0, 150),
                      width: 400,
                      height: 400,
                      child: Text(
                        "Person 6", //could be "name1" from a list of names gathered by the input screen
                        style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    new Container(
                      margin: const EdgeInsets.only(left: 0.0, right: 0,top: 0.0,bottom: 250),
                      child: ButtonTheme(
                          buttonColor: Colors.amberAccent[100],
                          minWidth: 150.0,
                          height: 100.0,
                          child: RaisedButton(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(18.0)
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return AnimalRevealScreen6();
                              }));
                            },
                            child: Text("Tap to reveal!", style: TextStyle(fontSize: 30,)),
                          )),
                    ),

                    new Container(
                      margin: EdgeInsets.fromLTRB(50, 150, 0, 0),
                      width: 200,
                      height: 200,
                      child: Text(
                        "The category is Animals", //could be assigned by recognising which screen it came from
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.fromLTRB(50, 350, 0, 0),
                      width: 500,
                      height: 200,
                      child: Text(
                        "Try to make it obvious you know you know what the food is without giving it away", //could be assigned by recognising which screen it came from
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left: 0.0, right: 0,top: 450.0),
                          child: ButtonTheme(
                              buttonColor: Colors.amberAccent[100],
                              minWidth: 150.0,
                              height: 100.0,
                              child: RaisedButton(
                                shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(18.0)
                                ),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return Question1(); //would return to the first question screen
                                  }));
                                },
                                child: Text("Start", style: TextStyle(fontSize: 45,)),
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