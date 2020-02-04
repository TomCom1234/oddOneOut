import 'dart:ui';
<<<<<<< HEAD
import 'dart:ui' as prefix1;

import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:odd_one_out/InputScreen.dart';
import 'package:odd_one_out/TutorialScreen.dart';

import 'HomeScreen.dart';

var inputScreen = new InputScreen();
=======

import 'package:flutter/material.dart';

>>>>>>> f96f8e9ab5bcae90ef33e3f7ad8692ef5c3b64a9


class GuessScreen extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
//        drawer: Drawer(
//        ),
      appBar: AppBar(
        title: Text("Time to vote!", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.amber[100],
        centerTitle: true,
        automaticallyImplyLeading: false,
        iconTheme: new IconThemeData(color: Colors.black),
      ),

      body: Center(

        child: new ListView(
          padding: const EdgeInsets.only(top: 50.0,right: 50.0, left: 50.0, bottom: 50.0),
          children: <Widget>[


            Container(
              margin: const EdgeInsets.only(left: 0.0, right: 0,top: 50),
              child: ButtonTheme(
                  buttonColor: Colors.amberAccent,
                  minWidth: 150.0,
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () {
                    },
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0)
                    ),

                    child: Text("Person 1 " + "question", style: TextStyle(fontSize: 30,)),
                  )),
            ),


            Container(
              margin: const EdgeInsets.only(left: 0.0, right: 0,top: 20),
              child: ButtonTheme(
                  buttonColor: Colors.amberAccent,
                  minWidth: 150.0,
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () {
                    },
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0)
                    ),

                    child: Text("Person 2 " + "question", style: TextStyle(fontSize: 30,)),
                  )),
            ),



            Container(
              margin: const EdgeInsets.only(left: 0.0, right: 0,top:20),
              child: ButtonTheme(
                  buttonColor: Colors.amberAccent,
                  minWidth: 150.0,
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () {
                    },
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0)
                    ),

                    child: Text("Person 3 " + "question", style: TextStyle(fontSize: 30,)),
                  )),
            ),



            Container(
              margin: const EdgeInsets.only(left: 0.0, right: 0,top: 20),
              child: ButtonTheme(
                  buttonColor: Colors.amberAccent,
                  minWidth: 150.0,
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () {
                    },
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0)
                    ),

                    child: Text("Person 4 " + "question", style: TextStyle(fontSize: 30,)),
                  )),
            ),




            Container(
              margin: const EdgeInsets.only(left: 0.0, right: 0,top: 200.0),
              child: ButtonTheme(
                  buttonColor: Colors.amberAccent[100],
                  minWidth: 130.0,
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
                    child: Text("Voting", style: TextStyle(fontSize: 45,)),
                  )),
            ),


          ],

        ),
      ),



    );
  }
<<<<<<< HEAD
}
=======
}

>>>>>>> f96f8e9ab5bcae90ef33e3f7ad8692ef5c3b64a9
