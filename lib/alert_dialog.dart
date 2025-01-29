
import 'package:flutter/material.dart';
import 'package:live_class/HomeActivety.dart';
import 'package:live_class/MyApp.dart';


class AlertFunction extends StatelessWidget {
  const AlertFunction({super.key});


  MySnackBar(message,context){return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));}

  MyAlertDialog(context){
    return showDialog(context: context,
        builder: (BuildContext context){
      return Expanded(child: AlertDialog(
        title: Text("Alert !"),
        content: Text("Do you want to delete"),
        actions: [
          TextButton(onPressed: (){
            MySnackBar("Delete Success", context);Navigator.of(context).pop();
          }, child: Text("Yes")),
          TextButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text("No"))

        ],
      ));
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){MyAlertDialog(context);}, child: Text("click me")),
      ),
    );
  }

}