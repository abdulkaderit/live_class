
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'LoginForm.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.pink,
          appBarTheme: AppBarTheme(
              color: Colors.tealAccent,
              centerTitle: true
          ),
          scaffoldBackgroundColor: Colors.white60,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  foregroundColor: Colors.white
              ))
      ),
      debugShowCheckedModeBanner: false,
      home: Loginform(),
    );
  }
}