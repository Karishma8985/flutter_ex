// // example 1: create form
// import 'package:flutter/material.dart';
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

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

// class _MyHomePageState extends State<MyHomePage>
// {
//   final TextEditingController _nameController = TextEditingController();
//   final _formKey = GlobalKey<FormState>();
//   @override
//   void initState(){
//       super.initState();
//   }

//   @override
//   Widget build( BuildContext context){
//     return MaterialApp
//     ( 
//       home: Scaffold(
//           appBar: AppBar(
//           title: const Text("Form Desing"),
//         ),
//         body: Form(
//           key: _formKey, // for controlling complete form
//           child: Column(
//             children: [
//               TextFormField(
//                 decoration: const InputDecoration(
//                   hintText: "Name",
//                 ),
//                 controller: _nameController,
//                 validator:  (value){
//                   if(value!.isEmpty){
//                     return 'This Field is Required';
//                   }
//                   if(value.length < 2){
//                     return 'Name must be 2 or more Characters';
//                   }
//                   return null;
//                 },),
//                 ElevatedButton(
//                   onPressed: (){
//                     if(!_formKey.currentState!.validate()){
//                     return;
//                   }
                
//                 }, child: const Text("Submit")),
//             ],
//           )),       
//         )
//     );
//   }
// }


// example on all in one fields

// create form
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

class _MyHomePageState extends State<MyHomePage>
{
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  
  @override
  Widget build( BuildContext context){
    return MaterialApp( 
      home: Scaffold(
          appBar: AppBar(
          title: const Text("Form Desing"),
        ),
        body: Form( 
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Name",
                  ),
                  keyboardType: TextInputType.text,
                  validator: validateName,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Email",
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: validateEmail,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Phone",
                  ),
                  keyboardType: TextInputType.phone,
                  validator: validateMobile,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Password",
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  validator: validatePassword,
              ),
              ElevatedButton(
                onPressed: (){
                  if(!_formKey.currentState!.validate()){
                    return;
                  }
                },
                child: const Text("Submit")),
              ],
          ))
      )
    );
 }

 String? validateName(String? value){
  if( value!.length < 3)
  {
    return 'Name must be more than 2 character';
  }
  return null;
 }
 
 
 String? validateMobile(String? value){
  if( value!.length != 10)
  {
    return 'Mobile number must be more than 10 character';
  }
  return null;
 }

 String? validateEmail(String? value){
 String pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
      r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
      r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
      r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
      r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
      r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
      r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
 // String pattern = r'^\S+@\S+\.\S+$';

  RegExp regex = RegExp(pattern);
  if(!regex.hasMatch(value!))
  {
    return 'Enter Valid Email';
  }
  return null;
 }

 String? validatePassword(String? value){
  if( value!.isEmpty)
  {
    return 'This field is required';
  }
  if(value.length < 8 )
  {
    return 'Password should have atleast 8 characters';
  }
  if(!RegExp(r'[A-Z0-9a-z]*').hasMatch(value))
  {
    return 'Enter a stronger Password';
  }
  return null;
 }
 
}


// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   TextEditingController _controller = TextEditingController();
//   String? _errorText;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Text Field with Validation'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             TextField(
//               controller: _controller,
//               decoration: InputDecoration(
//                 labelText: 'Enter your name',
//                 errorText: _errorText,
//               ),
//             ),
           
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: () {
//                 String input = _controller.text.trim();
//                 if (input.isEmpty) {
//                   setState(() {
//                     _errorText = 'Please enter some text';
//                     _controller.clear();
//                   });
//                 } else {
//                   // Validation passed, do something with the input
//                   print('Name: $input');
//                   setState(() {
//                     _errorText = null; // Clear error message
//                     _controller.clear();
//                   });
//                 }
//               },
//               child: Text('Submit'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }