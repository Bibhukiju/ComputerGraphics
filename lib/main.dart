

import 'package:compiled/Projects.dart';
import 'package:compiled/test.dart';
import 'package:flutter/material.dart';
import 'ProgramsExample.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      '/':(context)=>HomeScreen(),
      '/Programs':(context)=>Examples(),
      '/Projects': (context)=>Projects(),
      '/hello':(context)=>test()
    },
    debugShowCheckedModeBanner: false,
  )
  );
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Container MyButton(String name)=>Container(
      child: OutlineButton(
        borderSide: BorderSide(
          color: Colors.red
        ),
        padding: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {
          Navigator.pushNamed(context, "/$name");
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("$name",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Computer Graphics"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.count(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              MyButton("Programs"),
              MyButton("Projects"),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              MyButton("hello"),
            ], crossAxisCount: 2,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white,Colors.grey.shade900],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          )
        ),
      ),
    );
  }
}