// void main() {
//   runApp(const buttonEx());
// }

// calculator
// import 'package:flutter/material.dart';
// void main() {
//  runApp(const calculator());
// }

// class calculator extends StatefulWidget {
//   const calculator({super.key});

//   @override
//   State<calculator> createState() => _calculatorState();
// }

// class _calculatorState extends State<calculator> {
// TextEditingController txt1 = TextEditingController();
// TextEditingController txt2 = TextEditingController();
// String myText="";


// @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'calculator',
//       home:Scaffold(
//         appBar: AppBar(
//           title: const Text('Fluter App'),
//         ),
//         body:Column(
//           children: [
//             const Text('calculator Example',
//              style: TextStyle(fontSize: 25),
//             ),
//             TextField(
//               decoration: const InputDecoration(
//                 labelText: 'Enter 1st no',
//               ),
//               controller: txt1,
//             ),
//             TextField(
//               decoration: const InputDecoration(
//                 labelText: 'Enter 2nd no',
//               ),
//               controller: txt2,
//             ),  
//             ElevatedButton(onPressed: ()
//             {
//               add();
//             }, 
//             child:const Text('+')),
//             ElevatedButton(onPressed: ()
//             {
//               sub();
//             }, 
//             child:const Text('-')),
//             ElevatedButton(onPressed: ()
//             {
//               mul();
//             }, 
//             child:const Text('*')),
//             ElevatedButton(onPressed: ()
//             {
//               div();
//             }, 
//             child:const Text('/')),
//             Text(
//               myText,
//               style: const TextStyle(fontSize: 25),

//             ),
//             ],
//         )),
//     );
//   }
//   void add()
//   {
//     var no1 = int.parse(txt1.text);
//     var no2 = int.parse(txt2.text);
//     var c= no2+no1;
//     setState(() {
//       myText="sum is $c";
//     });
//   }
//   void sub()
//   {
//     var no1 = int.parse(txt1.text);
//     var no2 = int.parse(txt2.text);
//     var c= no1-no2;
//     setState(() {
//       myText="sum is $c";
//     });
//   }
//   void mul()
//   {
//     var no1 = int.parse(txt1.text);
//     var no2 = int.parse(txt2.text);
//     var c= no2*no1;
//     setState(() {
//       myText="sum is $c";
//     });
//   }
//   void div()
//   {
//     var no1 = int.parse(txt1.text);
//     var no2 = int.parse(txt2.text);
//     var c= no2/no1;
//     setState(() {
//       myText="sum is $c";
//     });
//   }

// }


// example of sum of two numbers
// import 'package:flutter/material.dart';
// void main() {
//  runApp(const calculator());
// }

// class calculator extends StatefulWidget {
//   const calculator({super.key});

//   @override
//   State<calculator> createState() => _calculatorState();
// }

// class _calculatorState extends State<calculator> {
// TextEditingController txt1 = TextEditingController();
// TextEditingController txt2 = TextEditingController();
// String myText="";


// @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Sum',
//       home:Scaffold(
//         appBar: AppBar(
//           title: const Text('Fluter App'),
//         ),
//         body:Column(
//           children: [
//             const Text('sum Example',
//              style: TextStyle(fontSize: 25),
//             ),
//             TextField(
//               decoration: const InputDecoration(
//                 labelText: 'Enter 1st no',
//               ),
//               controller: txt1,
//             ),
//             TextField(
//               decoration: const InputDecoration(
//                 labelText: 'Enter 2nd no',
//               ),
//               controller: txt2,
//             ),  
//             ElevatedButton(onPressed: ()
//             {
//               _showContent();
//             }, 
//             child:const Text("click me")),
//             Text(
//               myText,
//               style: const TextStyle(fontSize: 25),

//             ),
//             ],
//         )),
//     );
//   }
//   void _showContent()
//   {
//     var no1 = int.parse(txt1.text);
//     var no2 = int.parse(txt2.text);

//     var c= no2+no1;
//     setState(() {
//       myText="sum is ${c}";
//     });
//   }
// }

//class textonclick extends StatelessWidget {
//   const textonclick({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return textEx();
//   }
// }

// StateFull widget is a widget that maintains state.

// leap year example
// import 'dart:html';

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const textEx());
// }

// class textEx extends StatefulWidget {
//   const textEx({Key? key}) : super(key: key);

//   @override
//   State<textEx> createState() => _textExState();
// }

// // leap year example
// class _textExState extends State<textEx> {
//   String myText= "";
//   int year=0;
//     TextEditingController txt1 = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Leap Year"),
//         ),
//         body: Column(
//           children: [
//             const Text(
//               'flutter app',
//               style: TextStyle(fontSize: 25),
//             ),
//             TextField(
//               decoration: const InputDecoration(labelText: 'enter your name'),
//               controller: txt1,
//             ),
//             ElevatedButton(onPressed: ()
//             {
//               _showContent();
//             },
//              child: Text("Click Me"), 
//             ),
//             Text(
//               myText,
//               style: TextStyle(fontSize: 30),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void _showContent()
//   {
//     year = 2024;
//     if(year%100==0 && year%400==0)
//     {
//       setState(() {
//         myText = "year is leap year.";
//       });
//     }
//     else if(year%4==0)
//     {
//       setState(() {
//         myText = "year is leap year.";
//       });
//     }
//     else
//     {
//       setState(() {
//         myText = "year is not leap year.";
//       });
//     }

//   }
  

//   }

//     // example on controller
//         return MaterialApp(
//             home: Scaffold(
//               appBar: AppBar(
//                 title: const Text("Controller App"),
//               ),
//               body: Column(
//                 children: [
//                   const Text('Flutter App',
//                   style: TextStyle(fontSize: 25),
//                   ),
//                   TextField(
//                     decoration: const InputDecoration(labelText: "enter your name"),
//                     controller: txt1,
//                   ),
//                   ElevatedButton(onPressed: ()
//                   {
//                     _showContent();
//                   },
//                   child: Text("click me"),
//                   ),
//                   Text(
//                     myText,style: TextStyle(fontSize: 30),
//                   ),
//                 ],
//               ),
//             ),
//         );
//   }
//   void _showContent()
//   {
//     print("text is ${txt1.text}");

//     setState(() {
//       myText = txt1.text;
//     });
//   }
// }
//       // ON SUBMIT value print example 4:
//            return MaterialApp(
//             title: 'Flutter Demo',
//             home: Scaffold(
//               appBar: AppBar(
//               title: const Text("fluter demo"),
//               ),
//               body: Column(
//                 children: [
//                   const Text("Flutter app",
//                   style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
//                   ),
//                   TextField(
//                     decoration: const InputDecoration(
//                       labelText: 'Enter name',
//                     ),
//                     onChanged: (text){
//                       _changeContent(text);
//                     }),
//                     ElevatedButton(
//                       onPressed: (){
//                       _showContent();
//                     }, 
//                     child: const Text('Click Me')),
//                     Text(
//                       _textString,
//                       style: const TextStyle(fontSize: 25),
//                   ),
//                 ],
//               )
//             ),
//            );
//       }

//       _changeContent(String text){
//            setState((){
//           _tempString = text;
//         });
//       }
//       _showContent(){
//         setState(() {
//           _textString=_tempString;
//         });
//       }
// }

     //Text on button click Example 3:
//     return MaterialApp(
//       title: 'Text on button click',
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text("Flutter Data"),
//           ),
//           body: Column(
//             children: [
//               const Text(
//                 "Flutter App",
//                 style: TextStyle(fontSize: 25),
//               ),
//               const TextField(
//                 decoration: InputDecoration(
//                   labelText: "Enter name:",
//                 ),
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     print("click event Fired..");
//                   },
//                   child: const Text("Click Me")),
//               const Text(
//                 "Hello Dart",
//               ),
//             ],
//           )),
//     );
//   }
// }
    //Text example 2:
//       return MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(
//             title: const Text("Text Example"),
//           ),
//           body: Column(
//             children: [
//               const Text('Flutter App',
//               style: TextStyle(fontSize: 25),
//               ),
//               TextField(
//                 onChanged: (value){
//                   setState(() {
//                     name=value;
//                   });
//                 },
//               ),
//               Text("Text is : $name"),
//             ],
//           ),
//         ),
//       );
//   }
// }

//text example 1:
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Text Example"),
//           ),
//           body: Column(
//             children: [
//               Text('Flutter App',
//               style: TextStyle(fontSize: 25),
//                 ),
//                TextField(
//                 decoration: InputDecoration(labelText: 'Enter name'),
//                 onChanged: (text){
//                   _changeContent(text);
//                 },
//                ),
//                Text(textString,
//                ),
//             ],
//           ),
//       ),
//     );
//   }
//   void _changeContent(String text)
//   {
//     setState(() {
//       textString = text;
//     });
//   }
// }

// Button example 5:
// class buttonEx extends StatelessWidget {
//   const buttonEx({super.key});
//     @override
//   Widget build(BuildContext context) {
    
//      //Example 5:
//      return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Flutter Floating Action Button"),
//           centerTitle: true,
//           backgroundColor: Colors.blue[600],
//         ),
//       body: Container(),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.green,
//         child: Icon(Icons.add),
//         onPressed: () {
          
//         },
//       ),

//       ),
//      );
//   }
  
// }
    // Button example 4:
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Icon Button"),
//           centerTitle: true,
//           backgroundColor: Colors.yellow,
//         ),
//         body: Center(
//           child: IconButton(
//             //icon: Icon(Icons.access_alarm_sharp),
//             //icon: Icon(Icons.favorite),
//            // icon: Icon(Icons.ac_unit_sharp),
//            icon: Icon(Icons.work_history),
//             iconSize: 40,
//             color: Colors.red,
//             onPressed: () {},
//           ),
//         ),
//       ),
//     );
//   }
// }
 
//  Button example 3:  
//     return MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text("Text Button"),
//             centerTitle: true,
//             backgroundColor: Colors.purple,
//           ),
//           body: Center(
//             child: TextButton(
//                 child: Text("Click Me"),
//                 style: TextButton.styleFrom(
//                   primary: Colors.greenAccent,
//                 ),
//                 onPressed: () {},
//                 ),
//           ),
//         ),
//       );
//   }
// }
//Button Example 2:      
// return MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text("Outlined Button"),
//             centerTitle: true,
//             backgroundColor: Colors.blue,
//           ),
//           body: Center(
//             child: OutlinedButton(
//               child:Text("tap on this"),
//               style: OutlinedButton.styleFrom(
//                 primary: Colors.amber,
//                 side: BorderSide(
//                   color: Colors.red,
//                 ),
//               ),
//             onPressed: () {},
//             ),
//           ),
//         ),
//       ); 
//   }
// }
    
    // Button Example 1. 
    //return MaterialApp(
    // home:Scaffold(
    //   appBar: AppBar(
    //     title: Text("Button Styles"),
    //     centerTitle: true,
    //     backgroundColor: Colors.blue[900],
    //   ),
    //   body: Center(
    //     child: ElevatedButton(
    //       child: Text("Tap on this"),
    //         style: ElevatedButton.styleFrom(
    //         primary: Colors.red,
    //         elevation: 0,
    //       ),
    //       onPressed: () {},
    //       ),
    //   ),
    // ),
    // );
//  }
//}


//ex 4: statefull widget

// import 'package:flutter/material.dart';

// void main()
// {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.red[400],
//     );
//   }
// }
// ex 3 stateless widget

// import 'package:flutter/material.dart';

// void main()
// {
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.yellow[700],
//     );
//     }
// }
// ex 2 container
// import 'package:flutter/material.dart';
//  void main()
//  {
//    runApp(Container(
//     color: Colors.lightBlueAccent,
//      ));
//   }

// ex 1 simple  material app
// import 'package:flutter/material.dart';

// void main()
// {
//   runApp(const MaterialApp(
//     home: Text("welcome to flutter"),
//   ));
// }

import 'package:flutter/material.dart';

void main() {
 runApp(const buttonEx());
}

class buttonEx extends StatelessWidget {
 const buttonEx({super.key});

 @override
 Widget build(BuildContext context) {
  
  return MaterialApp(
   home: Scaffold(
    appBar: AppBar(
     title: Text("Flutter Floating Action Button"),
     centerTitle: true,
     backgroundColor: Colors.blue[600],
    ),
   body: Container(),
   floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
   floatingActionButton: FloatingActionButton(
    backgroundColor: Colors.green,
    child: Icon(Icons.add),
    onPressed: () {
     
    },
   ),
   ),
  );
 }
 
}