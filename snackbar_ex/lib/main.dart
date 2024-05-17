// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'SnackBar Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('SnackBar Example'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             final snackBar = SnackBar(
//               content: Text('This is a snackbar'),
//               duration: Duration(seconds: 2),
//               action: SnackBarAction(
//                 label: 'Undo',
//                 onPressed: () {
//                   // Undo something
//                 },
//               ),
//             );

//             ScaffoldMessenger.of(context).showSnackBar(snackBar);
//           },
//           child: Text('Show SnackBar'),
//         ),
//       ),
//     );
//   }
// }

// example 2: show more property
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _showSnackbar(BuildContext context) {
    final snackBar = SnackBar(
      backgroundColor: Colors.purple[500], // Custom background color
      duration: const Duration(seconds: 5), // Custom duration
      content: const Text(
        'This is a Snackbar',
        style: TextStyle(
          color: Colors.white, // Custom text color
          fontSize: 16.0, // Custom font size
        ),
      ),
      action: SnackBarAction(
        label: 'Close',
        textColor: Colors.yellow, // Custom action button text color
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showSnackbar(context);
          },
          child: const Text('Show Snackbar'),
        ),
      ),
    );
  }
}
