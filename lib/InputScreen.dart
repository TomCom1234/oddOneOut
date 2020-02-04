
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:odd_one_out/CatagoryScreen.dart';
import 'package:odd_one_out/Question%201.dart';


class InputScreen extends StatelessWidget {
  @override

//  List<TextEditingController> formInput = [];
     var list = new List<TextEditingController>();


  final TextEditingController nameInput1 = new TextEditingController();
  final TextEditingController nameInput2 = new TextEditingController();
  final TextEditingController nameInput3 = new TextEditingController();
  final TextEditingController nameInput4 = new TextEditingController();
  final TextEditingController nameInput5 = new TextEditingController();
  final TextEditingController nameInput6 = new TextEditingController();


  String name1;
  String name2;
  String name3;
  String name4;
  String name5;
  String name6;




<<<<<<< HEAD
  TextEditingController nameInput1 = new TextEditingController();
  TextEditingController nameInput2 = new TextEditingController();
  TextEditingController nameInput3 = new TextEditingController();
  TextEditingController nameInput4 = new TextEditingController();

=======
//  getInput(input1){
//    String input1 = nameInput1.toString();
//    String input2 = nameInput2.toString();
//    String input3 = nameInput3.toString();
//    String input4 = nameInput4.toString();
//    String input5 = nameInput5.toString();
//    String input6 = nameInput6.toString();
//
//
//  }
>>>>>>> f96f8e9ab5bcae90ef33e3f7ad8692ef5c3b64a9

  String getName1(name1){
    name1 = nameInput1.text;
    return name1;
  }

 void saveInput(){
  list.add(nameInput1);
  list.add(nameInput2);
  list.add(nameInput3);
  list.add(nameInput4);



}

void showNameInputted(){
  print(nameInput1);
  print(nameInput2);
  print(nameInput3);
  print(nameInput4);
  print(nameInput5);
  print(nameInput6);

}

  void clearInput(){
    nameInput1.clear();
    nameInput2.clear();
    nameInput3.clear();
    nameInput4.clear();

  }




  var _formKey = GlobalKey<FormState>();




  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
    return Scaffold(
        backgroundColor: Colors.grey[600],
//        drawer: Drawer(
//        ),
        appBar: AppBar(
          title: Text("Input Screen", style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.amber[100],
          centerTitle: true,
          automaticallyImplyLeading: false,
          iconTheme: new IconThemeData(color: Colors.black),
        ),

      body: Center(
      key: _formKey,
       child: new ListView(
           padding: const EdgeInsets.only(top: 50.0,right: 50.0, left: 50.0, bottom: 50.0),
            children: <Widget>[


              new TextFormField(
                controller: nameInput1,
                decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(20.0),
                      ),
                    ),
                    filled: true,
                    hintStyle: new TextStyle(color: Colors.grey[800]),
                    hintText: "Your Name",
                    fillColor: Colors.amber[100]),
              ),

              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: new TextFormField(
                  controller: nameInput2,
                  decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(20.0),
                        ),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(color: Colors.grey[800]),
                      hintText: "Your Name",
                      fillColor: Colors.amber[100]),
                ),

              ),

              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: new TextFormField(
                  controller: nameInput3,
                  decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(20.0),
                        ),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(color: Colors.grey[800]),
                      hintText: "Your Name",
                      fillColor: Colors.amber[100]),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: new TextFormField(
                  controller: nameInput4,
                  decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(20.0),
                        ),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(color: Colors.grey[800]),
                      hintText: "Your Name",
                      fillColor: Colors.amber[100]),
                ),
              ),



              Container(
                margin: EdgeInsets.only(top: 40.0),
                child: FlatButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0)),
                  color: Colors.black,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    saveInput();
                    Navigator.push(context, MaterialPageRoute(builder: (context){

                      return CatagoryScreen();
                    }));
//                  print(list.length);
                    print(list.getRange(0, 6));



                  },
                  child: Text(
                    "Save".toUpperCase(),
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 40.0),
                child: FlatButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0)),
                  color: Colors.black,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    clearInput();
                  },
                  child: Text(
                    "clear".toUpperCase(),
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),


            ],

        ),
      ),



    );
  }
}

void generateForm(){
  Container(
    margin: EdgeInsets.only(top: 30.0),
    child: new TextField(

      decoration: new InputDecoration(
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(20.0),
            ),
          ),

          filled: true,
          hintStyle: new TextStyle(color: Colors.grey[800]),
          hintText: "Your Name",
          fillColor: Colors.amber[100]),
    ),

  );

}
