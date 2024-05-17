// example 1: navigation to other package
// import 'package:flutter/material.dart';

// class SecondRoute extends StatelessWidget {
//   const SecondRoute({super.key});

//   @override
//   Widget build(BuildContext context){
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
//           child: const Text("Third Route"),
//           onPressed:(){
//             Navigator.pushNamed(context, "Third");
//           }),
//       ),
//     );
//   }
// }



// example 2: pass data between screen with constructor
// import 'package:flutter/material.dart';

// class SecondRoute extends StatelessWidget {
//   const SecondRoute({super.key, required this.mytxt1,required this.mytxt2});
//   final String mytxt1;
//   final String mytxt2;

//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Second Route'),
//         backgroundColor: Colors.red,
//       ),
//       body: Center(
//         child: Column(children: [
//           Text(mytxt1,
//           style: TextStyle(fontSize: 30),
//           ),
//           Text(mytxt2,
//           style: TextStyle(fontSize: 30),
//           ),
//           ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.red,
//             foregroundColor: Colors.white,
//           ),
//           onPressed:(){
//             Navigator.pop(context);
//           },
//           child: Text("Back"))
//         ], 
//       ),
//     ));
//   }
// }


// // example 3: pass data by Dynamic way
// import 'package:flutter/material.dart';

// class SecondRoute extends StatelessWidget {
//   const SecondRoute({super.key, required this.mytxt1});
//   final String mytxt1;
  
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Second Route'),
//         backgroundColor: Colors.red,
//       ),
//       body: Center(
//         child: Column(children: [
//           Text(mytxt1,
//           style:const TextStyle(fontSize: 30),
//           ),
//          ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.red,
//             foregroundColor: Colors.white,
//           ),
//           child: const Text("Back"),
//           onPressed:(){
//             Navigator.pop(context);
//           }),
          
//         ], 
//       ),
//     ));
//   }
// }



// example 3: passing data with  Route Settings.
import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key,});
    
  @override
  Widget build(BuildContext context){
    final mydata = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(children: [
          Text(mydata,
          style:const TextStyle(fontSize: 30),
          ),
         ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
          child: const Text("Back"),
          onPressed:(){
            Navigator.pop(context);
          }),
          
        ], 
      ),
    ));
  }
}

