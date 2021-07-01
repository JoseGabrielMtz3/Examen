import 'dart:html';

import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Ventana(),
    );
  }
}

class Ventana extends StatelessWidget{

@override
Widget build(BuildContext context) {
  return (
Scaffold(

body: Padding(padding: 
EdgeInsets.all(25.0),

child: Center(
  child: Form(
  child: Column(

children: [
TextFormField(
decoration: InputDecoration(
  border: OutlineInputBorder(),
  labelText: "Español" ,
),
),

Padding(padding: EdgeInsets.only(
top: 20.0,
),
child: RaisedButton(onPressed: (){},
child: Text("Traducir"),),
),

Padding(padding: EdgeInsets.only(
  top: 20.0,
),
child: TextFormField(
  decoration: InputDecoration(border: OutlineInputBorder(),
  labelText: "Inglés"
  ),
),),

],
  ),
  ),
),

),

)

  );
}

}

