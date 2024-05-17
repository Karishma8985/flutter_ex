// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class  MyApp extends StatelessWidget{

//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title: 'Flutter',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter'),
//         ),
//       body: MyWidget(),
//       ),
//     );
//   }
// }

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
    
//     return ListView(children: const[
//       ListTile(
//         title: Text("One"),
//       ),

//       ListTile(
//         title: Text("Two"),
//       ),

//       ListTile(
//         title: Text("Three"),
//         ),
//     ],);
//   }
// }


// // example 2: Leading and Trailing property

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class  MyApp extends StatelessWidget{

//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title: 'Flutter',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter'),
//         ),
//       body: MyWidget(),
//       ),
//     );
//   }
// }

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
    
//     return ListView(children: const[
//       ListTile(
//         leading: Icon(Icons.account_balance_sharp),
//         trailing: Icon(Icons.keyboard_arrow_right_outlined),
//         title: Text("One"),
//       ),

//       ListTile(
//         leading: Icon(Icons.account_balance_sharp),
//         trailing: Icon(Icons.keyboard_arrow_right_outlined),
//         title: Text("Two"),
//       ),

//       ListTile(
//         leading: Icon(Icons.account_balance_sharp),
//         trailing: Icon(Icons.keyboard_arrow_right_outlined),
//         title: Text("Three"),
//         ),
//     ],);
//   }
// }


// // example 3: on Tap

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class  MyApp extends StatelessWidget{

//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title: 'Flutter',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter'),
//         ),
//       body: MyWidget(),
//       ),
//     );
//   }
// }

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
    
//     return ListView(children: [
//       ListTile(
//         leading: Icon(Icons.account_balance_sharp),
//         trailing: Icon(Icons.keyboard_arrow_right_outlined),
//         title: Text("One"),
//         onTap: () {
//           print('One Clicked');
//         },
//       ),

//       ListTile(
//         leading: Icon(Icons.account_balance_sharp),
//         trailing: Icon(Icons.keyboard_arrow_right_outlined),
//         title: Text("Two"),
//         onTap: () {
//           print('Two Clicked');
//         },
//       ),

//       ListTile(
//         leading: Icon(Icons.account_balance_sharp),
//         trailing: Icon(Icons.keyboard_arrow_right_outlined),
//         title: Text("Three"),
//         onTap: () {
//           print('Three Clicked');
//         },
//         ),
//     ],);
//   }
// }


// // example 4: LIstView using Container

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class  MyApp extends StatelessWidget{

//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title: 'Flutter',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter'),
//         ),
//       body: MyWidget(),
//       ),
//     );
//   }
// }

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
    
//     return ListView(
//       padding: const EdgeInsets.all(1),
//       children: <Widget>[
//         Container(
//           height: 50,
//           color: Colors.orange[700],
//           child: const Center(child: Text("Entry A")),
//         ),
//         Container(
//           height: 50,
//           color: Colors.orange[400],
//           child: const Center(child: Text("Entry B")),
//         ),
//         Container(
//           height: 50,
//           color: Colors.orange[200],
//           child: const Center(child: Text("Entry C")),
//         ),
//         Container(
//           height: 50,
//           color: Colors.orange[100],
//           child: const Center(child: Text("Entry D")),
//       ),
      
//     ],);
//   }
// }


// // example 5: ListView builder  (ListTile Customization) 

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class  MyApp extends StatelessWidget{

//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title: 'Flutter',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter'),
//         ),
//       body: MyWidget(),
//       ),
//     );
//   }
// }

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
    
//     return ListView(
//       children: <Widget>[
//         ListTile(
//           leading: Icon(Icons.wb_sunny),
//           title: Text("Sun"),
//         ),
//         ListTile(
//           leading: Icon(Icons.airplanemode_active),
//           title: Text("Aeroplane"),
//         ),ListTile(
//           leading: Icon(Icons.star),
//           title: Text("Star"),
//         ),ListTile(
//           leading: Icon(Icons.ac_unit),
//           title: Text("AC"),
//         ),ListTile(
//           leading: Icon(Icons.call),
//           title: Text("Call"),
//         ),ListTile(
//           leading: Icon(Icons.headphones),
//           title: Text("Headphones"),
//         ),
//     ],);
//   }
// }

// // example 6: ListView builder  (ListTile Customization with trailing) 

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class  MyApp extends StatelessWidget{

//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title: 'Flutter',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter'),
//         ),
//       body: MyWidget(),
//       ),
//     );
//   }
// }

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
    
//     return ListView(
//       children: <Widget>[
//         ListTile(
//           leading: Icon(Icons.wb_sunny),
//           title: Text("Sun"),
//           trailing: Icon(Icons.keyboard_arrow_right),
//         ),
//         ListTile(
//           leading: Icon(Icons.airplanemode_active),
//           title: Text("Aeroplane"),
//           trailing: Icon(Icons.keyboard_arrow_right),
//         ),ListTile(
//           leading: Icon(Icons.star),
//           title: Text("Star"),
//           trailing: Icon(Icons.keyboard_arrow_right),
//         ),ListTile(
//           leading: Icon(Icons.ac_unit),
//           title: Text("AC"),
//           trailing: Icon(Icons.keyboard_arrow_right),
//         ),ListTile(
//           leading: Icon(Icons.call),
//           title: Text("Call"),
//           trailing: Icon(Icons.keyboard_arrow_right),
//         ),ListTile(
//           leading: Icon(Icons.headphones),
//           title: Text("Headphones"),
//           trailing: Icon(Icons.keyboard_arrow_right),
//         ),    ],);
//   }
// }

// // example 7: ListView builder  

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class  MyApp extends StatelessWidget{

//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
    
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('ListView. builder Example'),
//         ),
//       body: ListView.builder(
//         itemCount: 5,
//         itemBuilder: (BuildContext context, int index){
//                       // here index will auto counted by itemcount.
//           return ListTile(
//             title: Text('Hello Dart'),
//           );
//         },
//       ),
//       ),
//     );
//   }
// }


// // example 7: ListView builder  with click event

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class  MyApp extends StatelessWidget{

//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
    
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('ListView. builder Example with click event'),
//         ),
//       body: ListView.builder(
//         itemCount: 5,
//         itemBuilder: (BuildContext context, int index){
//                       // here index will auto counted by itemcount.
//           return ListTile(
//             title: Text('Item $index'),
//             onTap: () {
//               print("Clicked Index $index");
//             },
//           );
//         },
//       ),
//       ),
//     );
//   }
// }


// // example 8 : ListView builder  (Icons) 

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class  MyApp extends StatelessWidget{

//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
    
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('ListView. builder Example (Icons)'),
//         ),
//       body: ListView.builder(
//         itemCount: 5,
//         itemBuilder: (BuildContext context, int index){
//                       // here index will auto counted by itemcount.
//           return ListTile(
//             leading: Icon(Icons.home),
//             trailing: Text('next', 
//             style: TextStyle(fontSize: 15, color: Colors.blue ),
//             ),
//             title: Text("Item $index"),
//             onTap: () {
//               print('Clicked Index $index');
//             },
//           );
//         },
//       ),
//       ),
//     );
//   }
// }



// // example 8 : ListView builder  (Card) 

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class  MyApp extends StatelessWidget{

//   @override
//   Widget build(BuildContext context){

//     final List<String> MyName = <String>["C","PHP","Android","iOS"];

//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('ListView. builder Example (card)'),
//         ),
//       body: ListView.builder(
//         itemCount: MyName.length,
//         itemBuilder: (BuildContext context, int index){
//           return Card(
//             child: ListTile(
//                 title: Text("${MyName[index]}"),
//                ),
            
//            );
//          },
//         ),
//       ),
//     );
//   }
// }




// // example 8 : ListView builder  (Separated()) 

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class  MyApp extends StatelessWidget{

//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title: 'Flutter',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('ListView Separated()'),
//         ),
//       body: MyWidget(),
//       ),
//     );
//   }
// }

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     final List<String> MyName = <String> ["C","C++","PHP","Android","iOS"];

//     return ListView.separated(
//      itemCount: MyName.length,   
//      itemBuilder: (context, index) {
//        return Text(
//         MyName[index],
//         style: const TextStyle(fontSize: 24),
//        );
//      },
//      separatorBuilder: (context, index) {
//        return Divider(
//         color: Theme.of(context).colorScheme.error, 
//        );
//      }
//     );
//   }
// }

// // example 9 : ListView builder  (custom()) 

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class  MyApp extends StatelessWidget{

//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title: 'Flutter',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('ListView custom()'),
//         ),
//       body: MyWidget(),
//       ),
//     );
//   }
// }

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//       return ListView.custom(
//         childrenDelegate: SliverChildListDelegate(
//           [
//             const ListTile(
//               leading: Icon(Icons.map),
//               title: Text('Map'),
//             ),
//             const ListTile(
//               leading: Icon(Icons.photo_album),
//               title: Text('Album'),
//             ),
//             const ListTile(
//               leading: Icon(Icons.phone),
//               title: Text('Phone'),
//             ),
//           ],
//         ),
//       );
//   }
// }

// // example 10 : ListView builder  (image set as list icon) 

// import 'package:flutter/material.dart';


// void main() => runApp(MyApp());

// class  MyApp extends StatelessWidget{

//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title: 'Flutter',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('ListView custom()'),
//         ),
//       body: MyWidget(),
//       ),
//     );
//   }
// }

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//       return ListView(
//          children: const <Widget>[
//           ListTile(
//             leading: CircleAvatar(
//               backgroundImage: AssetImage('assets/images/sun.jpg'),
              
//             ),
//             title: Text('Sun'),
//             subtitle: Text('93 million miles away'), 
//           ),
//           ListTile(
//             leading: CircleAvatar(
//               backgroundImage: AssetImage('assets/images/moon.jpg'),
//             ),
//             title: Text('Moon'),
//           ),
//           ListTile(
//             leading: CircleAvatar(
//               backgroundImage: AssetImage('assets/images/stars.jpg'),
//             ),
//             title: Text('Star'),
//           ),
//          ],
//       );
         
//   }
// }


// example 11 : ListView builder  (card widget) 

import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class  MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView custom()'),
        ),
      body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
     final titles = ['bike', 'boat', 'bus', 'car', 'railway', 'run', 'subway', 'transit', 'walk'];
      
      final icons = [Icons.directions_bike, Icons.directions_boat,Icons.directions_bus, Icons.directions_car, Icons.directions_railway,      Icons.directions_run, Icons.directions_subway, Icons.directions_transit,      Icons.directions_walk];
      
      return ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Card( //                           <-- Card widget
            child: ListTile(
              leading: Icon(icons[index]),
              title: Text(titles[index]),
            ),
          );
        },
      );
    }
         
  }




 

 