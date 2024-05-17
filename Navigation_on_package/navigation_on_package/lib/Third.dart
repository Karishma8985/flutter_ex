// example 1: navigation to other package
// import 'package:flutter/material.dart';

// class ThirdRoute extends StatelessWidget {
//   const ThirdRoute({super.key});

//   @override
//   Widget build(BuildContext context){
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
//           onPressed:(){
//             Navigator.restorablePushReplacementNamed(context, '/');
//           }),
//       ),
//     );
//   }
// }