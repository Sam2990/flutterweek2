import 'package:flutter/material.dart';
import 'package:fluttero/add.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  @override
  State<myapp> createState() => _myapp();
}

class _myapp extends State<myapp> {
   final List<Widget>_list = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(
          title: Text("EVENTS"),
          backgroundColor: Colors.deepPurple,
        ),

        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(

              itemCount: _list.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.5),
                      borderRadius: BorderRadius.circular(14), //<-- SEE HERE
                    ),
                    tileColor: Colors.white,
                    leading: Text((index+1).toString()),
                    //trailing: ,
                    title:_list[index],
                  ),
                );
              }
              )),
        ),

        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              backgroundColor: Colors.deepPurple,
              onPressed: () async {
                String s;
               s = await Navigator.of(context).push(MaterialPageRoute(builder: (context)=>add()));
                 setState(() {
                 _list.add(Text(s));
               });
              },
              child: Icon(Icons.add),
            );
          }
        ),
      ),
    );
  }
}
