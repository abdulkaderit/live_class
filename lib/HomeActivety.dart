import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeActivety extends StatefulWidget {
  final String name;
  const HomeActivety({super.key, required this.name});

  @override
  State<HomeActivety> createState() => _HomeActivetyState();
}

class _HomeActivetyState extends State<HomeActivety> {
  int _count = 0;
  
  // incrementCount(){
  //   setState(() {
  //     _count++;
  //   });
  //   print(_count);
  // }
  // decrement(){
  //   setState(() {
  //     _count--;
  //   });
  // }
  List<String> _task = [];
  TextEditingController _taskController = TextEditingController();

  _addTask(){
    if(_taskController.text.isNotEmpty){
      setState(() {
        _task.add(_taskController.text);
        _taskController.clear();
      });
    }
  }

  _removeTask(int index){
      setState(() {
        _task.removeAt(index);
      });
  }

  _removeAll(){
    setState(() {
      _task.clear();
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Simple To Do Apps"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(widget.name,style: TextStyle(fontSize: 25,color: Colors.black),),
            TextField(
              controller: _taskController,
              decoration: InputDecoration(
                hintText: "Enter your Task",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(onPressed: _addTask, icon: Icon(Icons.add))
              ),
            ),
            SizedBox(height: 20,),
            
            Expanded(
              child: ListView.builder(
                  itemCount: _task.length,
                  itemBuilder: (context,index){
                    return Card(
                      child: ListTile(
                        title: Text(_task[index]),
                        trailing: IconButton(onPressed:() => _removeTask(index), icon: Icon(Icons.delete,color: Colors.red,)),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _removeAll,child: Icon(Icons.delete_forever),),
    );
  }
}