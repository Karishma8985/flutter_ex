// import 'package:flutter/material.dart';

// void main() => runApp(const MaterialApp(
//   title: "App",
//   home: MyApp(),
// ));


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Route'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: const Text("Click to Navigate..."),
//           onPressed: () {
//             Navigator.push(
//               context, MaterialPageRoute(builder: (context)=> const SecondRoute()),
//               );
//           },    
//           ),
//       ),
//     );
//   }
// }

// class SecondRoute extends StatelessWidget {
//   const SecondRoute({super.key});

//   @override
//   Widget build(BuildContext context)
//   {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Second Route'),
//         backgroundColor: Colors.red,
//       ),
//       body: Center(
//         child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.red,
//             foregroundColor: Colors.white,
//           ),
//         child: const Text("Back"),
//         onPressed: () {
          
//            Navigator.pop(context);
//         }),
//       ),
//     );
//   }
  
// }


// three page navigation
// import 'package:flutter/material.dart';

// void main() => runApp(const MaterialApp(
//   title: "App",
//   home: MyApp(),
// ));


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Route'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: const Text("Click to Navigate..."),
//           onPressed: () {
//             Navigator.push(
//               context, MaterialPageRoute(builder: (context)=> const SecondRoute()),
//               );
//           },    
//           ),
//       ),
//     );
//   }
// }

// class SecondRoute extends StatelessWidget {
//   const SecondRoute({super.key});

//   @override
//   Widget build(BuildContext context)
//   {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Second Route'),
//         backgroundColor: Colors.red,
//       ),
//       body: Center(
//         child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.red,
//             foregroundColor: Colors.white,
//           ),
//         child: const Text("Third Route"),
//         onPressed: () {
          
//            Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context)=> const ThirdRoute()),
//            );
//         }),
//       ),
//     );
//   }
// }

// class ThirdRoute extends StatelessWidget{
//   const ThirdRoute({super.key});

//   @override
//   Widget build(BuildContext context)
//   {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Third Route'),
//         backgroundColor: Colors.amber,
//       ),
//       body: Center(
//         child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.amber,
//             foregroundColor: Colors.white,
//           ),
//           child: const Text("Back"),
//           onPressed: () {
//             Navigator.pop(context);
//           }),
//       ),
//     );
//   }
// }

// // Route with name using pushnamed method

// import 'dart:js';

// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(
//   title: "App",
//   home: MyApp(),
//   initialRoute: "Home",
//   routes: {
//     "Home": (context) => const MyApp(),
//     "Second": (context) => const SecondRoute(),
//     "Third": (context) => const ThirdRoute(),
//   },
// ));
  
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});

//   @override

//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title:  const Text("Home Route"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: const Text("Click to navigate"),
//           onPressed: () {
//             Navigator.pushNamed(context, 'Second');
//           },
//           ),
//       ),
//     );
//   }
// }

// class SecondRoute extends StatelessWidget{
//   const SecondRoute({super.key});

//   @override

//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title:  const Text("Second Route"),
//         backgroundColor: Colors.red,
//       ),
//       body: Center(
//         child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.red,
//             foregroundColor: Colors.white,
//           ),
//           child: const Text("Third Route"),
//           onPressed: () {
//             Navigator.pushNamed(context, 'Third');
//           },
//           ),
//       ),
//     );
//   }
// }

// class ThirdRoute extends StatelessWidget{
//   const ThirdRoute({super.key});

//   @override

//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title:  const Text("Third Route"),
//         backgroundColor: Colors.red,
//       ),
//       body: Center(
//         child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.red,
//             foregroundColor: Colors.white,
//           ),
//           child: const Text("Back"),
//           onPressed: () {
//             Navigator.pushNamed(context, '/');
//           },
//           ),
//       ),
//     );
//   }
// }

// example on pushReplacementNamed
// Navigator.pushReplacementNamed(context,"Third");

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: "App",
  home: MyApp(),
  initialRoute: "Home",
  routes: {

    "Home": (context) => const MyApp(),
    "Second": (context) => const SecondRoute(),
    "Third": (context) => const ThirdRoute(),
  },
));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Click to Navigate..."),
          onPressed: () {
           Navigator.pushReplacementNamed(context,'Second');
          },    
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
        child: const Text("Third Route"),
        onPressed: () {
          
           Navigator.pushReplacementNamed(context,'Third');
          }
        ),
       )
     );
  }
 }

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Route'),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow,
            foregroundColor: Colors.blue,
          ),
        child: const Text("Third Route"),
        onPressed: () {
          
           Navigator.pushReplacementNamed(context,'Third');
          }
        ),
       )
     );
  }
 }
 
