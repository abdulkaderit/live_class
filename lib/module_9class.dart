import 'package:flutter/material.dart';

class module9class1 extends StatefulWidget {
  const module9class1({super.key});

  @override
  State<module9class1> createState() => _module9class1State();
}

class _module9class1State extends State<module9class1> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("MediaQuery Test"),
        backgroundColor: Colors.tealAccent,
      ),
      body: Center(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          decoration: BoxDecoration(color: Colors.blue),
          child: Center(
            child: Card(

              elevation: 50,
              color: Colors.green,
              shadowColor: Colors.white60,
              child: SizedBox(
                height: 150,
                width: 150,
                child: Center(
                    child: Text("Card Testing",style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),)),
                // child: Colors.green,
                // shadowColor: Colors.green.shade500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
