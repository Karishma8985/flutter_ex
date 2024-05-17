// import 'package:flutter/material.dart'; // compulary flutter package for use ui elements
// // example 1

// void main() {

//   runApp(myApp());   // entry point
// }

// //  type stfl

// class myApp extends StatefulWidget {   //basic need
//   const myApp({super.key});

//   @override
//   State<myApp> createState() => _myAppState();
// }

// class _myAppState extends State<myApp> {
//   @override
//   Widget build(BuildContext context) {  // build is for stateful widget... point for designing start
//     return MaterialApp(
//       home: Scaffold(  // starting app piont
//         appBar: AppBar(
//           title: Text("Demo Application"),
//         ),
//         body: Text("Hello Dart"),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
// const MyApp({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
// 	return MaterialApp(
// 	home: Scaffold(
// 		appBar: AppBar(
// 		title: const Text("Container example"),
// 		),
// 		body: Container(
// 		child:const Text("Hello! i am inside a container!",
// 			style: TextStyle(fontSize: 20)),
// 		),
// 	),
// 	);
// }
// }

// // example 3: color with height , width

// //
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
// const MyApp({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
// 	return MaterialApp(
// 	home: Scaffold(
// 		appBar: AppBar(
// 		title: const Text("Container example"),
// 		),
// 		body: Container(
// 		height: 200,
// 		//width: double.infinity,
//     width: 300,
// 		color: Colors.purple,
// 		child: const Text("Hello! i am inside a container!",
// 			style: TextStyle(fontSize: 20)),
// 		),
// 	),
// 	);
// }
// }

// // show margin
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
// const MyApp({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
// 	return MaterialApp(
// 	home: Scaffold(
// 		appBar: AppBar(
// 		title: const Text("Container example"),
// 		),
// 		body: Container(
// 		height: 200,
// 		width: double.infinity,
// 		color: Colors.purple,
// 		margin: const EdgeInsets.all(50),
// 		child: const Text("Hello! i am inside a container!",
// 			style: TextStyle(fontSize: 20)),
// 		),
// 	),
// 	);
// }
// }

// // alignment

// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
// const MyApp({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
// 	return MaterialApp(
// 	home: Scaffold(
// 		appBar: AppBar(
// 		title: const Text("Container example"),
// 		),
// 		body: Container(
// 		height: 200,
// 		width: double.infinity,
// 		color: Colors.purple,
// 		alignment: Alignment.bottomCenter,
// 		margin: const EdgeInsets.all(20),
// 		padding: const EdgeInsets.all(30),
// 		child: const Text("Hello! i am inside a container!",
// 			style: TextStyle(fontSize: 20)),
// 		),
// 	),
// 	);
// }
// }

// //decoration

// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
// const MyApp({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
// 	return MaterialApp(
// 	home: Scaffold(
// 		appBar: AppBar(
// 		title: const Text("Container example"),
// 		),
// 		body: Container(
// 		height: 200,
// 		width: double.infinity,
// 		//color: Colors.purple,
//     //Cannot provide both a color and a decoration\nTo provide both, use \"decoration:
//   // BoxDecoration(color: color)\"."

// 		alignment: Alignment.center,
// 		margin: const EdgeInsets.all(20),
// 		padding: const EdgeInsets.all(30),
// 		decoration: BoxDecoration(
// 			border: Border.all(color: Colors.black, width: 3),
// 		),
// 		child: const Text("Hello! i am inside a container!",
// 			style: TextStyle(fontSize: 20)),
// 		),
// 	),
// 	);
// }
// }

//decoration different side

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container example"),
        ),
        body: Container(
          width: 150,
          height: 150,
          decoration: const BoxDecoration(
            border: Border.symmetric(
              horizontal: BorderSide(
                color: Colors.grey,
                width: 2,
              ),
              vertical: BorderSide(
                color: Colors.purple,
                width: 7,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
