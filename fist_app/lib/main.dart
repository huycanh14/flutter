import 'package:flutter/material.dart';

//import 'package:english_words/english_words.dart';
void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("I am rich"),
        backgroundColor: Colors.blueGrey[900],
      ),
      // body: Image.network('https://www.w3schools.com/w3css/img_lights.jpg'),
      body: Center(
        child: Image(
          // image: NetworkImage("https://www.w3schools.com/w3css/img_lights.jpg"),
          image: AssetImage('images/diamond.png')
        ),
      ),
    )
  )
);
