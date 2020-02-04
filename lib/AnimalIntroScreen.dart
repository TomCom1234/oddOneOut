
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:odd_one_out/CatagoryScreen.dart';
import 'package:odd_one_out/RevealScreen.dart';

class AnimalIntroScreen extends StatelessWidget {

  var catagoryScreen = CatagoryScreen();
  var revScreen = RevealScreen();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
    return Scaffold(
         backgroundColor: Colors.grey[600],
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Animal", style: TextStyle(fontSize: 40.0,color: Colors.black),),
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
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 350),
                          child: Image(
                            image: AssetImage("assets/koala.png"),
                          )
                      ),

                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 200.0, 0, 0),
                          child: new Text(''' Panda,Cheetah or whale would you be surprised if someone was afraid of this animal? Do you know some that had this as a pet? Animals are intelligent and incredible in every way




                        ''',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(30, 500, 120, 50),
                             child: MaterialButton(
                              height: 40.0,
                              minWidth: 96.0,
                              color: Colors.yellow[200],
                              textColor: Colors.black,
                              child: new Text("Back"),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return CatagoryScreen();
                                }));
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27.0)
                              ),
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.fromLTRB(0, 500, 30, 50),
                            child: MaterialButton(
                              height: 40.0,
                              minWidth: 96.0,
                              color: Colors.yellow[200],
                              textColor: Colors.black,
                              child: new Text("Start"),
                                onPressed: () {

                              var push = Navigator.push(context, MaterialPageRoute(builder: (context)=> RevealScreen()));
                               }
                              ,shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27.0)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
              ]),
        ));
  }
}
