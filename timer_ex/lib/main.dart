/**
 
Timer 
• If you need to execute a piece of code after some time in Flutter you have to use Timer class. Timer class will allow specifying the time which you need to delay the execution and after that time period code will be executed inside the Timer.

Where to Use?
• OTP Countdown 
• Stop Watch 
• Perform Some Action after some time 
• Custom Splash Screen (Redirect on another Screen after 5 Seconds)

Timer
    • To Use Timer, import the following dart library:
    import 'dart:async';
    
    • Run Code on Every 5 Seconds:
    Timer mytimer= Timer.periodic(Duration(seconds: 5), (timer) {
    
    });

    • Run Code on Every 2 minutes 5 seconds:
    Timer mytimer= Timer.periodic(Duration(minutes:2, seconds: 5), (timer) {
    
    });

    • Run Code on Every 2 Hours and 30 Minutes:
    Timer mytimer= Timer.periodic(Duration(hours:2, minutes: 30), (timer) {

    });

    • To Cancel or Terminate Timer:
    Timer mytimer= Timer.periodic(Duration(seconds: 5), (timer) {
  
    });
    
    mytimer.cancel(); //to end timer
    
    • You can add more attributes to Duration() widget such as day, hours, minutes, seconds, microseconds, milliseconds.
*/

// example 1: use of timer

// import 'dart:async';

// main() {
  
//   Timer(Duration(seconds: 2), (){
//       print("Yes Timer is Working");
//   });
// }



// // example 2 : load after 1 second

// import 'dart:async';

// main()
// {
//   Timer.periodic(Duration(seconds: 1), (timer) { 
//     print("After some time ${DateTime.now().hour}:  ${DateTime.now().minute}: ${DateTime.now().second}");
//   });
// }



// // example 3: stop/ cancel period execution

// import 'dart:async';

// main()
// {
//   Timer.periodic(Duration(seconds: 1), (timer) {
//       if(DateTime.now().second == 50){
//         timer.cancel();
//       }
//       print("After some time ${DateTime.now().hour} :  ${DateTime.now().minute}: ${DateTime.now().second}");
//    });
// }


// // example 4 Future : current time

// import 'dart:async';
// import 'package:flutter/material.dart';

// void main()
// {
//   runApp(MyHomePage());
// }

// class MyHomePage extends StatefulWidget {
  
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   String time = "";

//   @override
//   void initState(){
//     Timer mytimer = Timer.periodic(Duration(seconds: 1), (timer) {
//         DateTime timenow = DateTime.now(); 
//         time = "${timenow.hour} :  ${timenow.minute}: ${timenow.second}";
//         setState(() {});
        
//      });
//      super.initState();
//   }
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Test App",
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Execute code with Timer"),
//           backgroundColor: Colors.blue,
//         ),

//         body: Container(
//           height: 50,
//           color: Colors.blue.shade300,
//           child: Center(
//             child: Text(time,
//             style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//             ),
//           )
//         )
//         )
//     );
//   }
// }


// // example 5: Button Click Change Content after  5 Seconds

// import 'dart:async';
// import 'package:flutter/material.dart';

// void main()
// {
//   runApp(MyHomePage());
// }

// class MyHomePage extends StatefulWidget {
  
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   String mymsg = "Hello World";

//   @override
  
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Test App",
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Button Click Change Content after  5 Seconds"),
          
//         ),

//         body: Column(
//           children: [
//             Text(
//               mymsg,
//               style: TextStyle(fontSize: 30),
//             ),
//             ElevatedButton(
//               onPressed:(){
//                 Timer(const Duration(seconds: 5),(){
//                     setState(() {
                      
//                       mymsg="After Some time: ";
//                     });
//                 });
//               },
//               child: const Text("Submit")),
//             ]),
//         )
//         );
    
//   }
// }

//// example 6: Clock Start Stop


// import 'dart:async';
// import 'package:flutter/material.dart';

// void main()
// {
//   runApp(MyHomePage());
// }

// class MyHomePage extends StatefulWidget {
  
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   String mymsg = " Start Clock";
//   Timer? _timer;

//   @override
  
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Test App",
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Ckock start / stop"),
          
//         ),

//         body: Center(
//           child: Column(
//             children: [Text(mymsg,
//                 style: TextStyle(fontSize: 30),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               ElevatedButton(
//                 onPressed:(){
//                   _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
//                     setState(() {
//                       mymsg = "${DateTime.now().hour} : ${DateTime.now().minute} : ${DateTime.now().second}";
//                     });
//                    });
//                 },
//                 child: const Text("Start")),
//               // for spacing between button
//               SizedBox(
//                 height: 20,
//               ),
//               ElevatedButton(
//                 onPressed:(){
//                   _timer?.cancel();
//               },
//               child: const Text("Stop")),
//             ]),
//         )
//         )
//     );
    
//   }
// }


// // example 7: call after Sometime Using future



// import 'dart:async';
// import 'package:flutter/material.dart';

// void main()
// {
//   runApp(MyHomePage());
// }

// class MyHomePage extends StatefulWidget {
  
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   String mymsg = " Future Demo";
  
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Test App",
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Ckock start / stop"),
          
//         ),

//         body: Center(
//           child: Column(
//             children: [Text(mymsg,
//                 style: TextStyle(fontSize: 30),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               ElevatedButton(
//                 onPressed:(){
//                     Future.delayed(Duration(seconds: 2), () {
//                     setState(() {
//                       mymsg = "Called After 2 Seconds";
//                     });
//                    });
//                 },
//                 child: const Text(" 2 Seconds")),
//               // for spacing between button
//               SizedBox(
//                 height: 20,
//               ),
//               ElevatedButton(
//                 onPressed:(){
//                   Future.delayed(Duration(minutes: 1),(){
//                     setState(() {
//                     mymsg = "Called After 1 Minute";  
//                     });
                    
//                   });
//                 },
//               child: const Text("1 Minute"))
//             ]),
//         ),
//         ),
//     );
    
//   }
// }

// //example 8: Stop Watch

// import 'dart:async';
// import 'package:flutter/material.dart';

// void main()
// {
//   runApp(MyHomePage());
// }

// class MyHomePage extends StatefulWidget {
  
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   int _counter = 0;
//   late Timer _timer;
//   //the late keyword is used to indicate that a non-nullable variable will be initialized later in the code. if the non-nullable variable does not initialize before it using, it raised an error.
  
//   void _startTimer()
//   {
//     _timer = Timer.periodic(const Duration(seconds: 1), (timer) { 
//       setState(() {
//         _counter++;
//       });
//     });
//   }

//   void _pauseTimer()
//   {
//     _timer.cancel();
//   }

//   void _stopTimer()
//   {
//     _timer.cancel();
//     setState(() {
//       _counter=0;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Test App",
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Ckock start / stop"),
          
//         ),

//         body: Center(
//           child: Column(
//             children: [Text('$_counter',
//                 style: const TextStyle(fontSize: 30),
//               ),
              
//               SizedBox(
//                 height: 20,
//               ),
//               ElevatedButton(
//                 onPressed:(){
//                     _startTimer();
//                 },
//                 child: const Text(" Start")),
//               // for spacing between button
              
//               SizedBox(
//                 height: 20,
//               ),
//               ElevatedButton(
//                 onPressed:(){
//                   _pauseTimer();                  
//                 },
//               child: const Text("Pause")),
              
//               SizedBox(
//                 height: 20,
//               ),
//                ElevatedButton(
//                 onPressed:(){
//                   _stopTimer();                  
//                 },
//               child: const Text("Stop")),
//             ]),
//         ),
//         ),
//     );
    
//   }
// }


// //example 9: Create Counter : example on OTP Count down timer 10

// import 'dart:async';
// import 'package:flutter/material.dart';

// void main()
// {
//   runApp(MyHomePage());
// }

// class MyHomePage extends StatefulWidget {
  
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   int _counter = 10;
//   late Timer _timer;
//   //the late keyword is used to indicate that a non-nullable variable will be initialized later in the code. if the non-nullable variable does not initialize before it using, it raised an error.
  
//   void _startTimer()
//   {
//     _timer = Timer.periodic(const Duration(seconds: 1), (timer) { 
//       if(_counter > 0)
//       {
//         setState(() {
//           _counter--;
//       });
//       }
//       else
//       {
//         _timer.cancel();
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Test App",
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("countdown timer"),
          
//         ),

//         body: Center(
//           child: Column(
//             children: [Text('$_counter',
//                 style: const TextStyle(fontSize: 30),
//               ),
              
//               SizedBox(
//                 height: 20,
//               ),
//               ElevatedButton(
//                 onPressed:(){
//                     _startTimer();
//                 },
//                 child: const Text(" Start")),
//               // for spacing between button
              
//               SizedBox(
//                 height: 20,
//               ),
//               ElevatedButton(
//                 onPressed:(){
//                   _timer.cancel();                  
//                 },
//               child: const Text("Pause")),
              
//               SizedBox(
//                 height: 20,
//               ),
//                ElevatedButton(
//                 onPressed:(){
//                   _timer.cancel();
//                   setState(() {
//                     _counter=10;
//                   });                  
//                 },
//               child: const Text("Stop")),
//             ]),
//         ),
//         ),
//     );
    
//   }
// }


//Example 10:  set timer for send OTP


// // Create Counter : example on OTP Count down timer 10

// import 'dart:async';
// import 'package:flutter/material.dart';

// void main()
// {
//   runApp(MyHomePage());
// }

// class MyHomePage extends StatefulWidget {
  
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   int _counter = 10;
//   late Timer _timer;
//   bool isLoading = false;
    
//   void _startTimer()
//   {
//     _counter=10;
//     _timer = Timer.periodic(const Duration(seconds: 1), (timer) { 
//       if(_counter ==0)
//       {
//         _timer.cancel();
//         setState(() {
//           isLoading=true;
//       });
//       }
//       else
//       {
//         setState(() {
//           _counter--;
//           isLoading = false;  
//         });
        
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Test OTP Timer App",
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("OTP timer"),
          
//         ),

//         body: Center(
//           child: Column(
//             children: [Text('$_counter',
//                 style: const TextStyle(fontSize: 30),
//               ),
              
           
//               ElevatedButton(
//                 onPressed:(){
//                     _startTimer();
//                 },
//                 child: const Text(" send OTP")),
              
//               Visibility(
//                 visible: isLoading,
                
//                 child: ElevatedButton(
//                 onPressed:(){
//                   _startTimer();
//                 },
//               child: const Text("Resend OTP"))),
//             ]),
//           ),
//         ),
//     );
    
//   }
// }


// Create Counter : example on Circular Counter

import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Circular Countdown Timer Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Circular Countdown Timer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _duration = 10;
  final CountDownController _controller = CountDownController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title!),
        ),
        body: Center(
         child: CircularCountDownTimer(
          // Countdown duration in Seconds.
          duration: _duration,

          // Countdown initial elapsed Duration in Seconds.
          initialDuration: 0,

          // Controls (i.e Start, Pause, Resume, Restart) the Countdown Timer.
          controller: _controller,

          // Width of the Countdown Widget.
          width: MediaQuery.of(context).size.width / 2,

          // Height of the Countdown Widget.
          height: MediaQuery.of(context).size.height / 2,

          // Ring Color for Countdown Widget.
          ringColor: Color.fromARGB(255, 190, 158, 158),

          // Ring Gradient for Countdown Widget.
          ringGradient: null,

          // Filling Color for Countdown Widget.
          fillColor: Color.fromARGB(255, 3, 60, 245),

          // Filling Gradient for Countdown Widget.
          fillGradient: null,

          // Background Color for Countdown Widget.
          backgroundColor: Colors.purple[500],

          // Background Gradient for Countdown Widget.
          backgroundGradient: null,

          // Border Thickness of the Countdown Ring.
          strokeWidth: 20.0,

          // Begin and end contours with a flat edge and no extension.
          strokeCap: StrokeCap.round,

          // Text Style for Countdown Text.
          textStyle: const TextStyle(
            fontSize: 33.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),

          // Format for the Countdown Text.
          textFormat: CountdownTextFormat.S,

          // Handles Countdown Timer (true for Reverse Countdown (max to 0), false for Forward Countdown (0 to max)).
          isReverse: false,

          // Handles Animation Direction (true for Reverse Animation, false for Forward Animation).
          isReverseAnimation: false,

          // Handles visibility of the Countdown Text.
          isTimerTextShown: true,

          // Handles the timer start.
          autoStart: false,

          // This Callback will execute when the Countdown Starts.
          onStart: () {
            // Here, do whatever you want
            debugPrint('Countdown Started');
          },

          // This Callback will execute when the Countdown Ends.
          onComplete: () {
            // Here, do whatever you want
            debugPrint('Countdown Ended');
          },

          // This Callback will execute when the Countdown Changes.
          onChange: (String timeStamp) {
            // Here, do whatever you want
            debugPrint('Countdown Changed $timeStamp');
          },

          /* 
            * Function to format the text.
            * Allows you to format the current duration to any String.
            * It also provides the default function in case you want to format specific moments
              as in reverse when reaching '0' show 'GO', and for the reset of the instances follow 
              the default behavior.
          */
          timeFormatterFunction: (defaultFormatterFunction, duration) {
            if (duration.inSeconds == 0) {
              // only format for '0'
              return "Start";
            } else {
              // other durations by it's default format
              return Function.apply(defaultFormatterFunction, [duration]);
            }
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 30,
          ),
          _button(
            title: "Start",
            onPressed: () => _controller.start(),
          ),
          const SizedBox(
            width: 10,
          ),
          _button(
            title: "Pause",
            onPressed: () => _controller.pause(),
          ),
          const SizedBox(
            width: 10,
          ),
          _button(
            title: "Resume",
            onPressed: () => _controller.resume(),
          ),
          const SizedBox(
            width: 10,
          ),
          _button(
            title: "Restart",
            onPressed: () => _controller.restart(duration: _duration),
          ),
        ],
      ),
    ));
  }

  Widget _button({required String title, VoidCallback? onPressed}) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.purple),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}