import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MyHomePage();
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
{
  @override
  void initState(){
      super.initState();
  }

  @override
  Widget build( BuildContext context){
    return MaterialApp
    ( 
      home: Scaffold(
          appBar: AppBar(
          title: const Text("Add toast package.."),
        ),
        body: Row(
          children: [
            ElevatedButton(
              onPressed: () {
                  show_data();
                },
              child: const Text("Click Me")
          ),
          ]),
        )
    );
  }

  void show_data()
  {
    Fluttertoast.showToast(
        msg: "This is bottom Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1, // for second show s
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}