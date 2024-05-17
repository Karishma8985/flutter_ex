// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     home: MyApp()
//   ));
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   bool is_onoff = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('FlutterApp'),
//       ),
//       body: Row(children:[
//         Switch(value: is_onoff,
//          onChanged: (value)
//          {
//           setState(() {
//             is_onoff = value;
//           });
//          },
//         ),
//         Text("$is_onoff"),
//       ]),
//     );
//   }
// }
 
  
// Example 2  other properties example

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     home: MyApp()
//   ));
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   bool is_onoff = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('FlutterApp'),
//       ),
//       body: Row(children:[
//         Switch(value: is_onoff,
//         activeColor: Colors.green,
//         activeTrackColor: Colors.blue,
//         inactiveThumbColor: Colors.amber,
//         inactiveTrackColor: Colors.red,
//         onChanged: (value)
//          {
//           setState(() {
//             is_onoff = value;
//           });
//          },
//         ),
//         Text("$is_onoff"),
//       ]),
//     );
//   }
// }
 
// // examlple 3: slider example 

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     home: MyApp()
//   ));
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   double _myvalue = 1;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('FlutterApp'),
//       ),
//       body: Column(children:[
//         Slider(
//           min:1,
//           max:10,
//           value: _myvalue,
//           onChanged: (value)
//           {
//             setState(() {
//               _myvalue = value;
//             });
//          },
//         ),
//         Text("$_myvalue"),
//       ]),
//     );
//   }
// }
 

// // example 4: other properties
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     home: MyApp()
//   ));
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   double _myvalue = 1;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('FlutterApp'),
//       ),
//       body: Column(children:[
//         Slider(
//           min:1,
//           max:10,
//           activeColor: Colors.green,
//           thumbColor: Colors.red,
//           value: _myvalue,
//           onChanged: (value)
//           {
//             setState(() {
//               _myvalue = value;
//             });
//          },
//         onChangeStart: (value) => print("Start Dragging......"), 
//         onChangeEnd: (value) => print("End Dragging.....")
//         ),
//         Text("$_myvalue"),
//       ]),
//     );
//   }
// }

// // example  5: on Divisons.

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     home: MyApp()
//   ));
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   double _myvalue = 1;
//   String _mystatus = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('FlutterApp'),
//       ),
//       body: Column(children:[
//         Slider(
//           min:1,
//           max:10,
//           divisions: 20,
//           value: _myvalue,
//           onChanged: (double value)
//           {
//             setState(() {
//               _myvalue = value;
//             });
//           },
//           onChangeStart: (value){
//             setState(() {
//               _mystatus = "Start";
//             });
//           },
//           onChangeEnd: (value){
//             setState(() {
//               _mystatus = "End";
//             });
//           }
//         ),
//         Text("$_myvalue"),
//         Text("$_mystatus"),

//       ]),
//     );
//   }
// }


// example 6: on  Range Slider


// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     home: MyApp()
//   ));
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   double _startValue = 20.0;
//   double _endValue = 90.0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('FlutterApp'),
//       ),
//       body: Column(children:[
//         RangeSlider(
//           min:0.0,
//           max:100.0,
//           values:RangeValues(_startValue, _endValue),
//           onChanged: (value)
//           {
//             setState(() {
//               _startValue = value.start;
//               _endValue = value.end;
//             });
//           }),
//         Text("$_startValue"),
//         Text("$_endValue"),

//       ]),
//     );
//   }
// }

// // example 7: Visibility Widget (Show/Hide)

// // example 6: on  Range Slider


// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     home: MyApp()
//   ));
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   bool is_visible = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('FlutterApp'),
//       ),
//       body: Column(children:[
//         Visibility(
//           visible: is_visible,
//           child: const Text("Hello world! ",
//           style: TextStyle(fontSize: 30),
//           ),
//           ),
//           ElevatedButton(
//           child: const Text("Show"),
//           onPressed: (() {
//             setState(() {
//               is_visible= true;
//             });
//           })),
//             ElevatedButton(
//           child: const Text("Hide"),
//           onPressed:(() {
//             setState(() {
//               is_visible= false;
//             });
//           })),
          
//       ]),
//     );
//   }
// }



// // example 8: toogle


// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     home: MyApp()
//   ));
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   bool is_visible = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('FlutterApp'),
//       ),
//       body: Column(children:[
//         Visibility(
//           visible: is_visible,
//           child: const Text("Hello world! ",
//           style: TextStyle(fontSize: 30),
//           ),
//           ),
//           ElevatedButton(
//           onPressed: (() {
//             setState(() {
//               is_visible= !is_visible;
//             });
//           }),
//           child: Text(is_visible ? "Hide" : "Show")),
//          ]),
//     );
//   }
// }


// // example 8: toogle

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     home: MyApp()
//   ));
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   bool is_visible = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('FlutterApp'),
//       ),
//       body: Column(children:[
//         Visibility(
//           visible: is_visible,
//           child: const Text("Hello world! ",
//           style: TextStyle(fontSize: 30),
//           ),
//           ),
//           ElevatedButton(
//           onPressed: (() {
//             setState(() {
//               is_visible= !is_visible;
//             });
//           }),
//           child: Text(is_visible ? "Hide" : "Show")),
//          ]),
//     );
//   }
// }


// // example 9: Cupertino ActivityIndicator (buffer circle )

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     home: MyApp()
//   ));
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('FlutterApp'),
//       ),
//       body: Column(children: const [
//         CupertinoActivityIndicator(
//           animating: true,
//           radius: 30,
//         )
//       ]),
//     );
//   }
// }


// example 10: onclick hide/show

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp()
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool is_OnStatus = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterApp'),
      ),
      body: Column(children: [
        Visibility(
          visible: is_OnStatus,
          child: CupertinoActivityIndicator(
            animating: is_OnStatus,
            radius: 30,
            ),
        ),
        ElevatedButton(
          child:const Text('Start'),
          onPressed: ((){
            setState(() {
              is_OnStatus= true;
          });

       })),
       ElevatedButton(
          child:const Text('Stop'),
          onPressed: ((){
            setState(() {
              is_OnStatus= false;
          });

       })),
      ]),
    );
  }
}