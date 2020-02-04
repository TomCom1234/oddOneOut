import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:odd_one_out/CatagoryScreen.dart';

import 'RevealScreen.dart';

class ClothesIntroScreen extends StatelessWidget {

  var catagoryScreen = CatagoryScreen();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
    return Scaffold(
        backgroundColor: Colors.grey[600],

        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Clothes", style: TextStyle(fontSize: 40.0 ,color: Colors.black),),
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
                            image: AssetImage("assets/tshirt.png"),
                          )
                      ),

                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 280.0, 0, 0),
                          child: new Text(''' T-shirt,jeans or sweat pants: How surprised would you be to meet someone who doesn’t have this?
We all love clothes and it is important to most people in life.




                        ''',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(30, 500, 120, 0),
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
                              },                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27.0)
                              ),
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.fromLTRB(0, 500, 30, 0),
                            child: MaterialButton(
                              height: 40.0,
                              minWidth: 96.0,
                              color: Colors.yellow[200],
                              textColor: Colors.black,
                              child: new Text("Start"),
                              onPressed: () {

                                var push = Navigator.push(context, MaterialPageRoute(builder: (context)=> RevealScreen()));
                              },
                              shape: RoundedRectangleBorder(
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
