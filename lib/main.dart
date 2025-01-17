 import 'package:flutter/cupertino.dart';
 import 'package:flutter/material.dart';

//  void main(){
//   runApp(MaterialApp(
//     title: 'Ostad app',
//     home: SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           titleTextStyle: const TextStyle(
//               color: Colors.pink,fontSize: 30,
//               fontStyle: FontStyle.italic,
//               fontWeight: FontWeight.bold,
//               //backgroundColor: Colors.lightBlueAccent,
//               //decoration: TextDecoration.underline
//           ),
//           shadowColor: Colors.deepOrange,
//           backgroundColor: Colors.blueGrey,
//           title: Text("Ostad Apps"),
//           centerTitle: true,
//         ),
//
//         body: Column(
//           children: [
//             Center(
//               child: Row(children: [Icon(Icons.send,size: 35,color: Colors.green),ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.green,
//                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
//                   ),
//                   onPressed: (){
//                     print("This is a Button ");
//                   }, child: Text("Send Message",style: TextStyle(color: Colors.white,fontSize: 27),))],),
//             ),
//             //Row end here
//
//             Center(
//               child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.pink,
//                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
//                   ),
//                   onPressed: (){
//                 print("This is a Button ");
//               }, child: Text("Button",style: TextStyle(color: Colors.white,fontSize: 27),)),
//             ),
//             Icon(Icons.person, size: 35,color: Colors.pink,),
//             IconButton(onPressed: (){
//               print("I am icon button");
//             }, icon: Icon(Icons.add_a_photo,size: 35,color: Colors.blue,)),
//             TextButton(onPressed: (){
//               print("I am Text Button click even");
//             }, child: Text("Click me",style: TextStyle(color: Colors.blue,fontSize: 25),)),
//             Container(
//               height: 150,
//               width: 300,
//               alignment: Alignment.topRight,
//               margin: EdgeInsets.only(left: 5,top: 10,right: 10,bottom: 5),
//               padding: EdgeInsets.all(15),
//               decoration: BoxDecoration(
//                 color: Colors.pink,
//                 borderRadius: BorderRadius.only(topLeft: Radius.circular(35),bottomRight: Radius.circular(25)),
//                 border: Border.all(color: Colors.black,width: 10),
//                 gradient: LinearGradient(colors: [Colors.deepOrangeAccent,Colors.red.shade500,Colors.orange],
//                     begin:Alignment.topLeft,end: Alignment.bottomRight
//                 ),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey,
//                     blurRadius: 10,
//                     spreadRadius: 5,
//                     offset: Offset(7, 10)
//                   )
//                 ]
//               ),
//               child: Text("This is a container",style: TextStyle(color: Colors.amber,fontSize: 25),),
//             )
//           ],
//         ),
//       ),
//     ),
//   ));
// }  //Old Class
 void main(){
   runApp(MyApp());
 }
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ostad Flutter App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        padding:EdgeInsets.all(25),
      backgroundColor: Colors.green, foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))
        )
    );

    TextEditingController _nameController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Column(
          children: [
            Text("Flutter App Practics ",
              style: TextStyle(fontSize: 25,color: Colors.white),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: TextField(//padding aply hover the mouse on TestField and alt+enter than be come option
                controller: _nameController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  fillColor: Colors.deepOrange,
                  filled: false,
                  hintMaxLines: 1,
                  hintText: "Enter Your Name",
                  hintStyle: TextStyle(color: Colors.green,fontSize: 22),
                  labelText: "Name",
                  labelStyle: TextStyle(fontSize: 25,color: Colors.red ),
                  helperText: "Please enter your Name",
                  helperStyle: TextStyle(fontSize: 15,color: Colors.amber),
                  prefixIcon: Icon(Icons.person),
                  suffixIcon: Icon(Icons.send),
                  border:OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber,width: 5),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(25)),
                  ) ,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey,width: 2),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: TextField(//padding aply hover the mouse on TestField and alt+enter than be come option
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  fillColor: Colors.deepOrange,
                  filled: false,
                  hintMaxLines: 1,
                  hintText: "Enter Your Email",
                  hintStyle: TextStyle(color: Colors.green,fontSize: 22),
                  labelText: "E-mail",
                  labelStyle: TextStyle(fontSize: 25,color: Colors.red ),
                  helperText: "Please enter your E-mail number",
                  helperStyle: TextStyle(fontSize: 15,color: Colors.amber),
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.send),
                  border:OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber,width: 5),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(25)),
                  ) ,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey,width: 2),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: TextField(//padding aply hover the mouse on TestField and alt+enter than be come option
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.deepOrange,
                  filled: false,
                  hintMaxLines: 1,
                  hintText: "Enter Your Password",
                  hintStyle: TextStyle(color: Colors.green,fontSize: 22),
                  labelText: "Password",
                  labelStyle: TextStyle(fontSize: 25,color: Colors.red ),
                  helperText: "Please enter your valid Password",
                  helperStyle: TextStyle(fontSize: 15,color: Colors.amber),
                  prefixIcon: Icon(Icons.password),
                  //suffixIcon: Icon(Icons.send),
                  border:OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber,width: 5),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(25)),
                  ) ,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey,width: 2),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
                  ),
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              _passwordController.text.length > 6
                  ? print("Password is strong"): print("Password is weak");
              print(_nameController.text);
              print('${_emailController.text}@mail.com');
              print(_passwordController.text);
            }, child: Text('Submit'),style: buttonStyle),
            ElevatedButton(onPressed: (){
              _nameController.clear();
              _emailController.clear();
              _passwordController.clear();
              }, child: Text("Clear")),
        
            SizedBox(
              height: 250,
              width: 250,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context,index){
                    return ListTile(
                      title: Text("Abdul Kader ${index}"),
                      subtitle: Text("App Developer"),
                      leading: Icon(Icons.account_circle,size: 40,),
                      trailing: Icon(Icons.send),
                      onTap: (){
                        print("I am ListTile");
                      },
                      onLongPress: (){
                        print("I am ListTile long press");
                      },
                    );
                  },
                  ),
            ),
        
            ListTile(
              title: Text("Abdul Rahman"),
              subtitle: Text("Student Play class"),
              leading: Icon(Icons.account_circle,
                size: 50,
              ),
              trailing: Icon(Icons.send),
              onTap: (){
                print("I'm 2nd ListTile");
              },
              onLongPress: (){
                print("I'm LiatTile Long press");
              },
            ),

            SizedBox(height: 50,
              width: 250,
              child: Text("This ia smale text",
                style: TextStyle(fontSize: 25,color: Colors.blue),),
            ),
        
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed:(){},
                  child: ElevatedButton(
                      onPressed: (){},
                      child: Text(
                        "Click me",
                        style: TextStyle(fontSize: 25,color: Colors.white),
                      ),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  )),
            ),
        
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: (){},
                  child: Text("Send",style: TextStyle(color: Colors.white,fontSize: 25),),
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}
