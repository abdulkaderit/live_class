import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_class/main.dart';

void main(){
  runApp(MyApp());
}
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
        scaffoldBackgroundColor: Colors.grey,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              foregroundColor: Colors.white
            ))
      ),
      home: HomeActivety(),
    );
  }
}

class HomeActivety extends StatelessWidget {
  const HomeActivety({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordemailController = TextEditingController();
    TextEditingController _nameController = TextEditingController();
    final _formkey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //backgroundColor: Colors.green,
        title:Column(
          children: [
            Text("Ostad App",
              style:TextStyle(color: Colors.pink,fontSize: 26),
            ),
          ],
        ),
        //centerTitle: true,
      ),
      body: Column(
        children: [
          Form(key: _formkey,
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Email',
                    label: Text("E-mail")
                  ),
                  validator: (value){
                    if (value == null|| value.isEmpty){
                      return "Empty email not allow";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                  label: Text("Password")
                ),
                  validator: (value){
                    if (value == null || value.isEmpty || value.length <6 ){
                      return "Password must be 6 chareckton";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 10,),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.green),

                    onPressed: (){
                      if (_formkey.currentState! .validate()){
                        //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>UserInfo()));
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>UserInfo()));
                      }
                    },child: Text("Submit")),),

              SizedBox(
                height: 300,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 5),
                    itemCount: 7,
                    itemBuilder: (context, index){
                      return Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(25)
                            ),
                            child: Icon(Icons.mobile_screen_share,size: 45,color: Colors.white,),
                            // color: Colors.deepPurple,
                            // child: Center(
                            //     child: Text("Item $index",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                          ),
                          Text("Item $index")
                        ],
                      );
                    }
                ),
              )
            ],
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        //child: Icon(Icons.add),
        onPressed: (){print("Floating action button press"); },
        label: Icon(Icons.add),
      ),
    );
  }
}


class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("User Info"),
       //backgroundColor: Colors.blue,
     ),
     body: Column(
       children: [
         ElevatedButton(onPressed: (){
           Navigator.pop(context);
         }, child: Text("Back")),
         ElevatedButton(onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>Page1()));
           }, child: Text("Page1"))

       ],
     ),
   );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page1"),
        //backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Back")),

          ElevatedButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeActivety()));
          }, child: Text("Home")),

        ],
      ),
    );
  }
}