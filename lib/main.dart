import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Hello world, Title.'),
        centerTitle: true,
      ),
      body: Center(child: Text('Hello World , Body parts'),),
    ),
  ));
}