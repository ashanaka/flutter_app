import "package:flutter/material.dart";

void main (){

  runApp(
    MaterialApp(
      title: "My Flutter App",
      home: Material(
        color: Colors.blueAccent,
        child: Center(
          child: Text(
            "Hello Flutter",
            textDirection: TextDirection.ltr
          )
        )
      )
    )
  );
}