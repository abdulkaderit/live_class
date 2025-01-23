
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'class8live.dart';


class UserInfo extends StatelessWidget {
  final String name;
  const UserInfo({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Info"),
        //backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Text(name,style: TextStyle(fontSize: 25,color: Colors.white),),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Back")),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Page1(msg: "From Page 1 " )));
          }, child: Text("Page1"))

        ],
      ),
    );
  }
}