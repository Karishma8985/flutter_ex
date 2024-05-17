// state management
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  MyScreen();
//   }
// }

// class MyScreen extends StatefulWidget{
//   const MyScreen({super.key});

//   @override
//   State<MyScreen> createState() => _MyScreenState();
// }

// class _MyScreenState extends State<MyScreen>
// {
//   String name = 'flutter';

//   @override

//   Widget build( BuildContext context){
//     return MaterialApp(
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("home"),

//         ),
//         body: Column(
//           children: [
//             Text(
//               "variable value is : $name",
//               style:TextStyle(fontSize: 40),
//             )
//           ],
//         ),
//       ),

//     );

//   }
// }



// onChange Textfield update state value
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  MyScreen();
//   }
// }

// class MyScreen extends StatefulWidget{
//   const MyScreen({super.key});

//   @override
//   State<MyScreen> createState() => _MyScreenState();
// }

// class _MyScreenState extends State<MyScreen>
// {
//   var myTitle = "Flutter State Example";
//   var Myname = "";

//   @override

//   Widget build( BuildContext context){
//     return MaterialApp(
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("welcome to Home"),
//         ),
//         body: Column(
//           children: [
//             Text("$myTitle"),
//             TextField(
//               onChanged: (value){
//                 setState(() {
//                   Myname=value;
//                 });
//                 print(value);
//               },
//             ),
//               Text(Myname, style:TextStyle(fontSize: 40),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }




// show name on button click

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  MyScreen();
//   }
// }

// class MyScreen extends StatefulWidget{
//   const MyScreen({super.key});

//   @override
//   State<MyScreen> createState() => _MyScreenState();
// }

// class _MyScreenState extends State<MyScreen>
// {
//   String name = "";

//   @override

//   Widget build( BuildContext context){
//     return MaterialApp(
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("welcome to Home"),
//         ),
//         body: Column(
//           children: [
//             Text("$name", 
//             style: TextStyle(fontSize: 30),
//             ),
//             ElevatedButton(onPressed: (){
//               setState(() {
//                 name = "hello Hanuman";
//               });
//             }, child: Text("Click Me"),
//           ),
//           ],
//         ),
//       ),
//     );
//   }
// }




// example on counter 

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  MyScreen();
//   }
// }

// class MyScreen extends StatefulWidget{
//   const MyScreen({super.key});

//   @override
//   State<MyScreen> createState() => _MyScreenState();
// }

// class _MyScreenState extends State<MyScreen>
// {
//   int no1 = 1;

//   @override
//   Widget build( BuildContext context){
//     return MaterialApp(
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("welcome to Home"),
//         ),
//         body: Column(
//           children: [
//             Text(" Value is : $no1", 
//             style: TextStyle(fontSize: 30),
//             ),
//             ElevatedButton(onPressed: (){
//               setState(() {
//                 no1=no1+1;
//               });
//             }, child: Text("Increment"),
//           ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// // counter example using method
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  MyScreen();
//   }
// }

// class MyScreen extends StatefulWidget{
//   const MyScreen({super.key});

//   @override
//   State<MyScreen> createState() => _MyScreenState();
// }

// class _MyScreenState extends State<MyScreen>
// {
//   int no1 = 1;

//   @override
//   Widget build( BuildContext context){
//     return MaterialApp(
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Home"),
//         ),
//         body: Column(
//           children: [
//             Text(" Value is : $no1", 
//             style: const TextStyle(fontSize: 30,
//             ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 myprocess();
//               },
//               child: Text("Increment")
//           ),
//           ],
//         ),
//       ),
//     );
//   }

//   void myprocess()
//   {
//     setState((){
//       no1=no1+1;
//     });
//   }
// }



// Even Odd Example

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  MyScreen();
//   }
// }

// class MyScreen extends StatefulWidget{
//   const MyScreen({super.key});

//   @override
//   State<MyScreen> createState() => _MyScreenState();
// }

// class _MyScreenState extends State<MyScreen>
// {
//   int no1 = 1;
//   String ans = "";

//   @override
//   Widget build( BuildContext context){
//     return MaterialApp(
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Even/Odd"),
//         ),
//         body: Column(
//           children: [
//             Text(" Value is : $no1", 
//             style: const TextStyle(fontSize: 30,
//             ),
//             ),
//             Text("$ans",
//             style: const TextStyle(
//               fontSize: 20,
//             ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 myprocess();
//               },
//               child: Text("Click Me")
//           ),
//           ],
//         ),
//       ),
//     );
//   }

//   void myprocess()
//   {
//     setState((){
//       no1=no1+1;
//     });

//     if(no1 % 2 == 0)
//     {
//       setState(() {
//         ans="Even";
//       });
//     }
//     else
//     {
//       setState(() {
//         ans = "Odd";
//       });
//     }
//   }
// }


// Toggle Button Example

import 'package:flutter/material.dart';

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
                  
                setState(() {
                  is_visible = !is_visible;
                });    
              }),
              child: Text(is_visible ? "Click to False" : "Click to True")
          ),
          ]),
      
    )
    );
  }
}