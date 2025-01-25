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

class WrapExample extends StatelessWidget{

  final List<String> categories = [
    'Fruits',"Vegetable","Dairy", "Meat","Fish","Bakery","snacks","Drink"
  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Wrap Example'),
     ),
     body: Column(
       children: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Wrap(
             spacing: 10,
             runSpacing: 20,
             children: categories.map((category){
               return Chip(label: Text(category),
               backgroundColor: Colors.blueAccent,);
             }).toList()
               // Container(
               //   height: 50,
               //   width: 50,
               //   color: Colors.red,
               // ),
               // SizedBox(width: 10,),
               // Container(
               //   height: 50,
               //   width: 50,
               //   color: Colors.red,
               // ),
               // SizedBox(width: 10,),
               // Container(
               //   height: 50,
               //   width: 50,
               //   color: Colors.red,
               // ),
               // SizedBox(width: 10,),
               // Container(
               //   height: 50,
               //   width: 50,
               //   color: Colors.red,
               // ),
               // SizedBox(width: 10,),
               // Container(
               //   height: 50,
               //   width: 50,
               //   color: Colors.red,
               // ),
               // SizedBox(width: 10,),
               // Container(
               //   height: 50,
               //   width: 50,
               //   color: Colors.red,
               // ),
               // SizedBox(width: 10,),
               // Container(
               //   height: 50,
               //   width: 50,
               //   color: Colors.red,
               // ),
               // SizedBox(width: 10,),
               // Container(
               //   height: 50,
               //   width: 50,
               //   color: Colors.red,
               // ),
               // SizedBox(width: 10,),
               // Container(
               //   height: 50,
               //   width: 50,
               //   color: Colors.red,
               // ),
               // SizedBox(width: 10,),
               // ListTile(
               //   title: Text("Data testing"),
               // ),
               // ListTile(
               //   title: Text("Data testing"),
               // ),
               // ListTile(
               //   title: Text("Data testing"),
               // ),
           ),
         ),
         GridView.count(
             crossAxisCount: 3,
             crossAxisSpacing:10,
           mainAxisSpacing: 20,
           children:List.generate(10, (index)=> Chip(label: Text("Item ${index}"),backgroundColor: Colors.blueAccent,)),
         )
       ],
     ),
   );
  }

}
