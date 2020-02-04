import 'dart:ui';
import 'dart:ui' as prefix1;

import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:odd_one_out/InputScreen.dart';
import 'package:odd_one_out/TutorialScreen.dart';

import 'GuessScreen.dart';

var inputScreen = new InputScreen();


class QuestionR2Q3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.grey[600],
//        drawer: Drawer(
//        ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Question Round 2", style: TextStyle(fontSize: 30.0,color: Colors.black),),
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
                      margin: EdgeInsets.fromLTRB(120, 0, 0, 150),
                      width: 400,
                      height: 400,
                      child: Text(
                        "Question 3",
                        style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.fromLTRB(50, 0, 0, 20),
                      width: 400,
                      height: 400,
                      child: Text(
                        "Person 1 asks Person 3", //would randomly generate using the names from the input screen
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    new Container(
                      margin: const EdgeInsets.only(left: 0.0, right: 0,top: 0.0,bottom: 180),
                      child: ButtonTheme(
                          buttonColor: Colors.amberAccent[100],
                          minWidth: 150.0,
                          height: 100.0,
                          child: RaisedButton(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(18.0)
                            ),

                            child: Text("How excited would you be to come home to this everyday?", style: TextStyle(fontSize: 30, color: Colors.white)),
                          )),
                    ),

                    new Container(
                      margin: EdgeInsets.fromLTRB(70, 200, 0, 0),
                      width: 500,
                      height: 200,
                      child: Text(
                        "The category is Animals", //could be assigned by recognising which screen it came from
                        style: TextStyle(
                          fontSize: 40.0,
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
                                    return GuessScreen(); //would return to the first question screen
                                  }));
                                },
                                child: Text("Guessing Round", style: TextStyle(fontSize: 45,)),
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