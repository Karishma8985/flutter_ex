/*
    Navigation Drawer
    
    • The navigation drawer is useful when you want to perform different page actions and events
    on different pages with the use of switching pages in the main drawer page.

    child: We use ListView in this field because generally we place a lot of options here.

    Background Color: Colour for the background of Drawer widget.

    shape: If you want different shape of Drawer rather than rectangle, this option is for you.

    elevation: The Drawer widget has an elevation over current layer. So there is an shadow to the container. This option helps to change the default value of 16.0.

    Semantic Label: Allows frameworks know when the drawer is opened or closed.
    
 */

// // example 1 : simple drawar......
 
 
// import 'package:flutter/material.dart';


// void main()
// {
//  runApp(MyHomePage());
// }


// class MyHomePage extends StatefulWidget {
 
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//  @override
//  Widget build(BuildContext context) {
//   return MaterialApp(
//    title: "Code for Navigator Drawer",
//    home: Scaffold(
//     appBar: AppBar(
//      title: const Text("Drawer example...."),
     
//     ),

//     body: Center(
//      child: Column(
//       children: [],
      
//       ),
//      ),
//     ),
//   );
  
//  }
// }


// // example 2 :  add Drawer  Options......
 
 
// import 'package:flutter/material.dart';


// void main()
// {
//  runApp(MyHomePage());
// }


// class MyHomePage extends StatefulWidget {
 
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//  @override
//  Widget build(BuildContext context) {
//   return MaterialApp(
//    title: "Code for Navigator Drawer",
//    home: Scaffold(
//     appBar: AppBar(
//      title: const Text("Drawer example...."),
     
//     ),

//     body: Center(
//      child: Column(
//       children: [],
//       ),
//      ),

//      drawer: Drawer(),
//     ),
//   );
  
//  }
// }


// // example 3 :  add listview as a child of drawer widget
 
 
// import 'package:flutter/material.dart';


// void main()
// {
//  runApp(MyHomePage());
// }


// class MyHomePage extends StatefulWidget {
 
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//  @override
//  Widget build(BuildContext context) {
//   return MaterialApp(
//    title: "Code for Navigator Drawer",
//    home: Scaffold(
//     appBar: AppBar(
//      title: const Text("Drawer example...."),
     
//     ),

//     body: Center(
//      child: Column(
//       children: [],
//       ),
//      ),

//      drawer: Drawer(
//       child: ListView(children: const[
//         // no. of menu can declare in listview as listtile
//         ListTile(
//           title: Text("menu1"),
//           trailing: Icon(Icons.arrow_forward),
//         ),

//         ListTile(
//           title: Text("menu2"),
//           trailing: Icon(Icons.arrow_forward),
//         ),
//       ]),
//      ),
//     ),
//   );
  
//  }
// }


// // example 4 :  add listview as a child of drawer at right side widget
 
 
// import 'package:flutter/material.dart';


// void main()
// {
//  runApp(MyHomePage());
// }


// class MyHomePage extends StatefulWidget {
 
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//  @override
//  Widget build(BuildContext context) {
//   return MaterialApp(
//    title: "Code for Navigator Drawer",
//    home: Scaffold(
//     appBar: AppBar(
//      title: const Text("Drawer example...."),
     
//     ),

//     body: Center(
//      child: Column(
//       children: [],
//       ),
//      ),

//      endDrawer: Drawer(
//       child: ListView(children: const[
//         // no. of menu can declare in listview as listtile
//         ListTile(
//           title: Text("menu1"),
//           trailing: Icon(Icons.arrow_forward),
//         ),

//         ListTile(
//           title: Text("menu2"),
//           trailing: Icon(Icons.arrow_forward),
//         ),
//       ]),
//      ),
//     ),
//   );
  
//  }
// }

// // example 5 :  add Header to drawer...
 
 
// import 'package:flutter/material.dart';


// void main()
// {
//  runApp(MyHomePage());
// }


// class MyHomePage extends StatefulWidget {
 
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//  @override
//  Widget build(BuildContext context) {
//   return MaterialApp(
//    title: "Code for Navigator Drawer",
//    home: Scaffold(
//     appBar: AppBar(
//      title: const Text("Header Drawer example...."),
//     ),

//     body: const Center(
//      child: Column(
//       children: [],
//       ),
//      ),

//      drawer: Drawer(
//       child: ListView(children: const[
//         DrawerHeader(child: Text("Header"),
//         ),
//         ListTile(
//           title: Text("menu1"),
//           trailing: Icon(Icons.arrow_forward),
//         ),

//         ListTile(
//           title: Text("menu2"),
//           trailing: Icon(Icons.arrow_forward),
//         ),
//       ]),
//      ),
//     ),
//   );
  
//  }
// }


// // example 6 :  add user details to Header in drawer...
 
 
// import 'package:flutter/material.dart';


// void main()
// {
//  runApp(MyHomePage());
// }


// class MyHomePage extends StatefulWidget {
 
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//  @override
//  Widget build(BuildContext context) {
//   return MaterialApp(
//    title: "Code for Navigator Drawer",
//    home: Scaffold(
//     appBar: AppBar(
//      title: const Text("Header Drawer example...."),
//     ),

//     body: const Center(
//      child: Column(
//       children: [],
//       ),
//      ),

//      drawer: Drawer(
//       child: ListView(children: [
//         UserAccountsDrawerHeader(
//           // for copy link right click on picture and copy image address
//           currentAccountPicture: Image.network("https://c4.wallpaperflare.com/wallpaper/246/739/689/digital-digital-art-artwork-illustration-abstract-hd-wallpaper-preview.jpg"),
//           accountName: Text("Karishma Patel"),
//           accountEmail: Text("karishmapatel.hnb@gmail.com"),
//           arrowColor: Colors.white,
//           decoration: BoxDecoration(color: Colors.black),
//           ),
        
//         ListTile(
//           leading: Icon(Icons.home),
//           title: Text("Home"),
//         ),

//         ListTile(
//           title: Text("About us"),
//           leading: Icon(Icons.arrow_forward),
//         ),
//       ]),
//      ),
//     ),
//   );
  
//  }
// }


// example otp generator

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OTP Generator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String generatedOTP = '';
  String enteredOTP = '';
  bool isVerified = false;

  // Generate a random 4-digit OTP
  String generateOTP() {
    Random random = Random();
    generatedOTP = '';
    for (int i = 0; i < 4; i++) {
      generatedOTP += random.nextInt(10).toString();
    }
    // nextInt(x) has one parameter only so need to run loop for only four digit value
    setState(() {});
    return generatedOTP;
  }

  // Verify the entered OTP
  void verifyOTP() {
    if (enteredOTP == generatedOTP) {
      setState(() {
        isVerified = true;
      });
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Success'),
          content: Text('OTP Verified Successfully!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('Invalid OTP. Please try again.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Generator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Generated OTP:',
            ),
            SizedBox(height: 10),
            Text(
              generatedOTP,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              onChanged: (value) {
                enteredOTP = value;
              },
              decoration: InputDecoration(
                hintText: 'Enter OTP',
              ),
              keyboardType: TextInputType.number,
              maxLength: 4,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: verifyOTP, // function call
              child: Text('Verify OTP'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: generateOTP,
              child: Text('Generate OTP'),
            ),
            SizedBox(height: 20),
            if (isVerified)
              Text(
                'OTP Verified!',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
      ),
      
    );
  }
}