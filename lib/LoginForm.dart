
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_class/HomeActivety.dart';

class Loginform extends StatelessWidget {
  const Loginform({super.key});

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
                      controller: _nameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter You Name',
                          label: Text("Name")
                      ),
                      validator: (value){
                        if (value == null|| value.isEmpty){
                          return "Please Input Your Valid Name";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Valid Email',
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
                      controller: _passwordemailController,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Put Strong Password',
                          label: Text("Password")
                      ),
                      validator: (value){
                        if (value == null || value.isEmpty || value.length <6 ){
                          return "Password must Write more than 6 Chareacter";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 10,),

                  SizedBox(
                    width:150,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),

                        onPressed: (){
                          if (_formkey.currentState! .validate()){
                            //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>UserInfo()));
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeActivety(name: _nameController.text,)));
                          }
                        },child: Text("Loging")),),

                  SizedBox(height: 10,),

                  SizedBox(
                    height: 300,
                    width: 500,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing:5,
                            mainAxisSpacing: 5),
                        itemCount: 4,
                        itemBuilder: (context, index){
                          return Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(25)
                                ),
                                //child: Icon(Icons.access_alarm,size: 25,color: Colors.white,),
                                //color: Colors.deepPurple,
                                child: Center(
                                    child: Icon(Icons.mobile_friendly,size:45, color: Colors.white)),
                              ),
                              //Text("Item $index")
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