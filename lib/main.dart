import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar (
          title: Text('Edo Application'),
          centerTitle: true,
          backgroundColor: Colors.yellow,
        ),
        body: Center(
          child: Text(
            "counter = $count ",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.orangeAccent,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              count = count+5;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.green,

        ),
      ),



    );
  }
}

