import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:odd_one_out/AnimalIntroScreen.dart';
import 'package:odd_one_out/ClothesIntroScreen.dart';
import 'package:odd_one_out/FoodIntroScreen.dart';
import 'package:odd_one_out/GameIntroScreen.dart';
import 'package:odd_one_out/InputScreen.dart';
import 'package:odd_one_out/MusicIntroScreen.dart';
import 'package:odd_one_out/MythologyIntroScreen.dart';
import 'package:odd_one_out/TutorialScreen.dart';

var inputScreen = new InputScreen();
//
var screens = [AnimalIntroScreen(),ClothesIntroScreen(),FoodIntroScreen(),GameIntroScreen(),MusicIntroScreen(),MythologyIntroScreen()];
var names = ["Animal","Clothes","Food","Game","Music","Mythology"];
var images = ["assets/koala.png","assets/tshirt.png","assets/pizza-slice2.png","assets/gamepad2.png","assets/music-player.png","assets/zeus.png" ];
//Orientation orientation;

nextScreen(int index){
  return screens[index];
}

class Catagory {
//  AssetImage image;
  String name;
  String image;
  Catagory({this.image,this.name});
}

  List catagoryList = [
      Catagory(
        image: "assets/group.png",
        name: "Lion",
      ),
      Catagory(
        image:"assets/group.png",
        name: "clothes",
      ),
      Catagory(
        image: "assets/group.png",
        name: "Food",
      ),
      Catagory(
        image: "assets/group.png",
        name: "Game",
      ),
      Catagory(
        image:"assets/group.png",
        name: "Music",
      ),
      Catagory(
        image: "assets/group.png",
        name: "Mythology",
      ),
  ];



class CatagoryScreen extends StatelessWidget {
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
            child: GridView.builder(
              itemCount: catagoryList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 2,),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 10.0, right: 20.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),color:Colors.amber[100],
                      child: Column( children: <Widget>[
                    Container(child: Padding(
                      padding: const EdgeInsets.all(5.0),

                      child: Image.asset(images[index], fit: BoxFit.cover,),
                    ), height: 100),
                    Text(names[index], style: TextStyle(fontSize: 25.0),),

                        FlatButton(
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(8.0)),
                          color: Colors.black,
                          textColor: Colors.white,
//                          padding: EdgeInsets.all(8.0),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return screens[index];
                            }));
                           },
                          child: Text(
                            "Play".toUpperCase(),
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ),



                  ],)
                  ),
                );
              },
            ),
          ),

        );
  }

}







