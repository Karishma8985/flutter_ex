// // example 1:  call shred_preference 

// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp ({Key? key}): super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MyScreen();
//   }
// }

// class MyScreen extends StatefulWidget {

//   const MyScreen({Key? key}) :super(key: key);

//   @override
//   State<MyScreen> createState() => _MyScreenState();
// }

// class _MyScreenState extends State<MyScreen> {

//   String myText = "";

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Shared_preference demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Shared_preference demo'),
//         ),
//       body: Center(
//         child: Column(
//           children: [
//               const Text('Shared_preference demo',
//               style: TextStyle(fontSize: 25),
//               ),
//               ElevatedButton(
//                 onPressed: (){
//                   _SaveData();
//                 },
//                 child: const Text('Save')
//               ),
              
//               ElevatedButton(
//                 onPressed:(){
//                   _GetData();
//                 }, 
//                 child: const Text('Get')
//               ),

//               ElevatedButton(
//                 onPressed:(){
//                   _RemoveData();
//                 }, 
//                 child: const Text('Remove')
//               ),
//               Text(
//                 myText,
//                 style: const TextStyle(fontSize: 25),
//               ),
//           ],
//           ),
//         ),
//       ),
//     );
    
//   }

//   void _SaveData() async {
//     var prefs = await SharedPreferences.getInstance();
//     await prefs.setInt('counter',10);
//     setState(() {
//       myText = "Saved";
//     });
//   }

//   void _GetData() async {
//     var prefs  = await SharedPreferences.getInstance();
//     final int? counter = prefs.getInt('counter');

//     setState(() {
//       myText = " Get Data : $counter";
//     });
//   }
//   void _RemoveData() async {
//     var prefs  = await SharedPreferences.getInstance();
//     await prefs.remove('counter');

//     setState(() {
//       myText = "Removed";
//     });
//   }

// }


// // example 2 :   shred_preference  using textfields

// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp ({Key? key}): super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MyHomePage();
//   }
// }

// class MyHomePage extends StatefulWidget {

//   const MyHomePage({Key? key}) :super(key: key);

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   TextEditingController txt1 = TextEditingController();
//   var myvalue = "";

//   @override

//   void initState(){
//     super.initState();
//     GetData();
//   }

//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Shared_preference demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Shared_preference demo'),
//         ),
//       body: Center(
//         child: Column(
//           children: [
//               TextField(
//                 controller: txt1,
//               ),
//               Text(myvalue),

//               ElevatedButton(
//                 onPressed: (){
//                   SaveData();
//                 },
//                 child: const Text('Save')
//               ),
              
//               ElevatedButton(
//                 onPressed:(){
//                   GetData();
//                 }, 
//                 child: const Text('Get')
//               ),

//               ElevatedButton(
//                 onPressed:(){
//                   RemoveData();
//                 }, 
//                 child: const Text('Remove')
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
    
//   }

//   void SaveData() async {
//     var prefs = await SharedPreferences.getInstance();
//     await prefs.setString('mya',txt1.text);
//     setState(() {
//       myvalue = "Data Saved";
//     });
//   }

//   void GetData() async {
//     var prefs  = await SharedPreferences.getInstance();
//     var mydata = prefs.getString("mya");
//     if(mydata == null)
//     {
//       setState(() {
//         myvalue = " No DAta Found";
//       });
//     } else { 
//       setState(() {
//         myvalue=mydata;
//       });
//     }
//   }
 
//   void RemoveData() async {
//     var prefs  = await SharedPreferences.getInstance();
//     await prefs.remove('mya');

//     setState(() {
//       myvalue = "Removed";
//     });
//   }

// }



// // example  3: color preference app using shared pref

// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Color Preference App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: ColorPage(),
//     );
//   }
// }

// class ColorPage extends StatefulWidget {
//   @override
//   _ColorPageState createState() => _ColorPageState();
// }

// class _ColorPageState extends State<ColorPage> {
//   late SharedPreferences _prefs;
//   String _selectedColor = "White";

//   @override
//   void initState() {
//     super.initState();
//     _loadColorPreference();
//   }

//   Future<void> _loadColorPreference() async {
//     _prefs = await SharedPreferences.getInstance();
//     setState(() {
//       _selectedColor = _prefs.getString('color_preference') ?? "White";
//     });
//   }

//   Future<void> _setColorPreference(String colorName) async {
//     await _prefs.setString('color_preference', colorName);
//     setState(() {
//       _selectedColor = colorName;
//     });
//   }

//   Color getColorFromString(String colorName) {
//     switch (colorName) {
//       case "Red":
//         return Colors.red;
//       case "Green":
//         return Colors.green;
//       case "Blue":
//         return Colors.blue;
//       default:
//         return Colors.white;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Color Preference App'),
//       ),
//       body: Container(
//         color: getColorFromString(_selectedColor),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               ElevatedButton(
//                 onPressed: () => _setColorPreference("Red"),
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
//                 child: Text('Red'),
//               ),
//               ElevatedButton(
//                 onPressed: () => _setColorPreference("Green"),
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
//                 child: Text('Green'),
//               ),
//               ElevatedButton(
//                 onPressed: () => _setColorPreference("Blue"),
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
//                 child: Text('Blue'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



// // example 4:  number storage app usinf shared preference
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   runApp(NumberPage());
// }

// class NumberPage extends StatefulWidget {
//   @override
//   _NumberPageState createState() => _NumberPageState();
// }

// class _NumberPageState extends State<NumberPage> {
//   late SharedPreferences _prefs;
//   TextEditingController _numberController = TextEditingController();
//   int _storedNumber = 0;

//   @override
//   void initState() {
//     super.initState();
//     _loadStoredNumber();
//   }

//   Future<void> _loadStoredNumber() async {
//     _prefs = await SharedPreferences.getInstance();
//     setState(() {
//       _storedNumber = _prefs.getInt('stored_number') ?? 0;
//     });
//   }

//   Future<void> _saveNumber() async {
//     int userInput = int.tryParse(_numberController.text) ?? 0;
//     await _prefs.setInt('stored_number', userInput);
//     setState(() {
//       _storedNumber = userInput;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Number Storage App',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text('Number Storage App'),
//           ),
//           body: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 TextField(
//                   controller: _numberController,
//                   keyboardType: TextInputType.number,
//                   decoration: InputDecoration(labelText: 'Enter a number'),
//                 ),
//                 SizedBox(height: 16),
//                 ElevatedButton(
//                   onPressed: _saveNumber,
//                   child: Text('Save Number'),
                  
//                 ),
                
//                 SizedBox(height: 32),
//                 Text(
//                   'Stored Number:',
//                   style: TextStyle(fontSize: 20),
//                 ),
//                 Text(
//                   '$_storedNumber',
//                   style: TextStyle(fontSize: 40),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }

//   @override
//   void dispose() {
//     _numberController.dispose();
//     super.dispose();
//   }
// }