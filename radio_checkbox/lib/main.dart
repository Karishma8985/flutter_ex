// // example 1: sample radio button...
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  MyHomePage();
//   }
// }

// class MyHomePage extends StatefulWidget{
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
// var cb1 = "Male";

//   @override
//   Widget build(BuildContext context) {
//       return MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text("Radio button"),
//           ),
//         body: Center(
//           child: Column(
//             children: [
//               RadioListTile(
//                 value: "Male", 
//                 groupValue: cb1,
//                 selected: true,
//                 title: const Text("Male"),
//                 onChanged: (value) => {
//                   setState((){
//                     cb1 = "Male";
//                 })
//               }),
//               Text(cb1),
//             ],
//           ),
//         ),
//       ),
//       );
      
//   }
// }


// // example 2: radio button with sub title gender...
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  MyHomePage();
//   }
// }

// class MyHomePage extends StatefulWidget{
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
// var cb1 = "Male";

//   @override
//   Widget build(BuildContext context) {
//       return MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text("Radio button"),
//           ),
//         body: Center(
//           child: Column(
//             children: [
//               RadioListTile(
//                 value: "Male", 
//                 groupValue: cb1,
//                 selected: true,
//                 title: const Text("Male"),
//                 tileColor: Colors.amber,
//                 subtitle: Text("Gender"),
//                 activeColor: Colors.black,
//                 selectedTileColor: Colors.grey,
//                 onChanged: (value) => {
//                   setState((){
//                     cb1 = "Male";
//                 })
//               }),
//               Text(cb1),
//             ],
//           ),
//         ),
//       ),
//       );
      
//   }
// }


// // example 3: radio button with 2 options
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  MyHomePage();
//   }
// }

// class MyHomePage extends StatefulWidget{
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
// var cb1 = "Male";

//   @override
//   Widget build(BuildContext context) {
//       return MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(
//             title: const Text("Radio button"),
//           ),
//         body: Center(
//           child: Column(
//             children: [
//               RadioListTile(
//                 value: "Male", 
//                 groupValue: cb1,
//                 selected: true,
//                 title: const Text("Male"),
//                 onChanged: (value) => {
//                   setState((){
//                     cb1 = "Male";
//                 })
//               }),
//                RadioListTile(
//                 value: "Female", 
//                 groupValue: cb1,
//                 selected: true,
//                 title: const Text("Female"),
//                 onChanged: (value) => {
//                   setState((){
//                     cb1 = "Female";
//                 })
//               }),
//             Text(cb1 == "Male" ? "Male" : "Female"),
//             ],
//           ),
//         ),
//       ),
//       );
      
//   }
// }



// // example 4: checkbox  example
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  MyHomePage();
//   }
// }

// class MyHomePage extends StatefulWidget{
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
// var cb1 = true;

//   @override
//   Widget build(BuildContext context) {
//       return MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(
//             title: const Text("check box"),
//           ),
//         body: Center(
//           child: Column(
//             children: [
//               CheckboxListTile(
//                 value: cb1, 
//                 title: const Text("Accepted"),
//                 onChanged: (value) => {
//                   setState((){
//                     cb1 = !cb1;
//                 })
//               }),
//             Text("$cb1"),
//             ],
//           ),
//         ),
//       ),
//       );
      
//   }
// }

// // example 5: checkbox with multiple options
import 'package:flutter/material.dart';

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

class _MyHomePageState extends State<MyHomePage> {
var cb1=false;
var cb2=false;
var cb3=false;
var cb4=false;
var mylist = [];

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text("checkbox "),
          ),
        body: Center(
          child: Column(
            children: [
              CheckboxListTile(
                value: cb1, 
                title: const Text("Android"),
                onChanged: (value) => {
                  setState((){
                    if(cb1){
                      cb1 = false;
                      mylist.remove("Android");
                    }
                    else{
                      cb1=true;
                      mylist.add("Android");
                    }
                    })
                }),
                CheckboxListTile(
                  value: cb2, 
                  title:  const Text("iOS"),
                  onChanged: (value) =>{
                    setState(() {
                      if(cb2){
                        cb2=false;
                        mylist.remove("iOS");
                      }
                      else{
                        cb2=true;
                        mylist.add("iOS");
                      }
                     })
                }),
                CheckboxListTile(
                  value: cb3, 
                  title:  const Text("Web"),
                  onChanged: (value) =>{
                    setState(() {
                      if(cb3){
                        cb3=false;
                        mylist.remove("Web");
                      }
                      else{
                        cb3=true;
                        mylist.add("Web");
                      }
                    })
                  }),
                CheckboxListTile(
                  value: cb4, 
                  title:  const Text("Mac OS"),
                  onChanged: (value) =>{
                    setState(() {
                      if(cb4){
                        cb4=false;
                        mylist.remove("Mac OS");
                      }
                      else{
                        cb4=true;
                        mylist.add("Mac OS");
                      }
                    })
                  }),

                Text("$mylist"),
          ],
          ),
        ),
      ),
      );
      
  }
}