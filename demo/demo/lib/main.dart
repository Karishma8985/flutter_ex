import 'package:flutter/material.dart';

void main() {
  runApp(demoapp());
}

class demoapp extends StatefulWidget {
  const demoapp({super.key});

  @override
  State<demoapp> createState() => _demoappState();
}

class _demoappState extends State<demoapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Demo1 Application"),
          ),
          body: Text("Hello This is my demo code."),
        ),
      );
    }
  }
