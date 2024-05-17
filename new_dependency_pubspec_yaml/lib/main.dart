import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MyScreen();
  }
}

class MyScreen extends StatefulWidget{
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen>
{
  bool is_visible = true;

  @override
  Widget build( BuildContext context){
    return MaterialApp
    ( 
      home: Scaffold(
          appBar: AppBar(
          title: const Text("Toggle Button"),
        ),
        body: Column(
          children: [
            Text(is_visible ? "True" : "False"),
            
            ElevatedButton(
              onPressed: (() {
                  show_data();
                // setState(() {
                //   is_visible = !is_visible;
                // });    
              }),
              child: Text(is_visible ? "Click to False" : "Click to True")
          ),
          ]),
      
    )
    );
  }

  void show_data()
  {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1, // for second show s
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}