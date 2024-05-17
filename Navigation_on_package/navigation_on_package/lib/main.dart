// Example 1: navigation to another package.
// import 'package:flutter/material.dart';
// import 'Second.dart';
// import 'Third.dart';

// void main() => runApp(MaterialApp(
//   title: "App",
//   home: MyApp(),
//   initialRoute: "Home",
//   routes: {
//     "Home": (context) => const MyApp(),
//     "Second": (context) => const SecondRoute(),
//     "Third": (context) => const ThirdRoute(),
//   },
//   ));


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Home Route"),
//         ),
//         body: Center(
//           child: ElevatedButton(
//             child: const Text('click to navigate......'),
//             onPressed: () {
//               Navigator.pushNamed(context, 'Second');
//             },
//           ),
//         ),
      
//       ),
//     );
//   }
// }



// // example 2: PASS DATA BETWWEN Screen with constructor

// import 'package:flutter/material.dart';
// import 'Second.dart';
// import 'Third.dart';

// void main() => runApp(MaterialApp(
//   title: "App",
//   home: MyApp(),
  
//   ));


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Home Route"),
//         ),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () {
//               Navigator.push(context, 
//               MaterialPageRoute(builder: (context)=>
//               SecondRoute(mytxt1: "Flutter", mytxt2: "Course")));
//             },
//              child: const Text('click to navigate......'),
//           ),
//         ),
      
//       ),
//     );
//   }
// }

// // example 3: PASS DATA Dynamic

// import 'package:flutter/material.dart';
// import 'Second.dart';

// void main() => runApp(MaterialApp(
//   title: "App",
//   home: MyApp(),
  
//   ));


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     TextEditingController txcon1 = new TextEditingController();
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Home Route"),
//         ),
//         body: Column(
//           children: [
//             TextField(
//               controller: txcon1,
//             ),
//         Center(
//           child: ElevatedButton(
//             child: const Text("Pass Data"),
//             onPressed: () {
//               Navigator.push(context, 
//               MaterialPageRoute(builder: (context)=>
//               SecondRoute(mytxt1: txcon1.text)));
//             },
//           ),
//         ),
//       ],
//       ),
//     ));
//   }
// }


// example 4: Passing Data with Route Settings

import 'package:flutter/material.dart';
import 'Second.dart';

void main() => runApp(MaterialApp(
  title: "App",
  home: MyApp(),
  
  ));


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txcon1 = new TextEditingController();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Home Route"),
        ),
        body: Column(
          children: [
            TextField(
              controller: txcon1,
            ),
        Center(
          child: ElevatedButton(
            child: const Text("Pass Data"),
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context)=> SecondRoute(),
                  settings: RouteSettings(
                    arguments: txcon1.text,
                  ),
                  ));
            },
          ),
        ),
      ],
      ),
    ));
  }
}
