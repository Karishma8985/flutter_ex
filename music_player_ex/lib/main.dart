/* A Flutter plugin to play multiple simultaneously audio files, works for Android, iOS, Linux, macOS, Windows, and web.


Steps
• Add Dependencies
  -Flutter pub add audioplayers
• Create Asset folder And Add audio
  - Assets/Audio
  -mysong.mp


  steps to add folder in Project Explorer
  assets
    -assets/audio/
*/
// // Example 1 : playing downloaded audio
// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';


// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Music Demo',
//       home: const MyMusic(title: 'Flutter Music demo'),
//     );
//   }
// }

// class MyMusic extends StatefulWidget {
//   const MyMusic({super.key, required this.title});

//   final String title;

//   @override
//   State<MyMusic> createState() => _MyMusicState();
// }

// class _MyMusicState extends State<MyMusic> {
  
//   String myAudioFilePath = "audio/sam.mp3";
//   AudioPlayer audioplayer = AudioPlayer();
  
//   @override
//   Widget build(BuildContext context) {

//     return MaterialApp(
//       title: "Fluter Audio demo",
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Flutter Music App"),
//         ),
//         body: Center(
//           child: Column(mainAxisAlignment: MainAxisAlignment.center, children:[
//             ElevatedButton(
//               onPressed: () async{
//                 await audioplayer.play(AssetSource(myAudioFilePath));
//                 print("Audio Play");
//               },
//               child: Text("Play"),
//               ),
//           ]),
//         ),
//       ),
//     );
//   }
// }


// // Example 2 : playing downloaded audio with option buttons
// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';


// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Flutter Music Demo',
//       home: MyMusic(title: 'Flutter Music demo'),
//     );
//   }
// }

// class MyMusic extends StatefulWidget {
//   const MyMusic({super.key, required this.title});

//   final String title;

//   @override
//   State<MyMusic> createState() => _MyMusicState();
// }

// class _MyMusicState extends State<MyMusic> {
  
//   String myAudioFilePath = "audio/sam.mp3";
//   AudioPlayer audioplayer = AudioPlayer();
  
//   @override
//   Widget build(BuildContext context) {

//     return MaterialApp(
//       title: "Flutter Audio demo with buttons options...",
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Flutter Music App"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center, 
//             children:<Widget>[
//             ElevatedButton(
//               onPressed: () async{
//                 await audioplayer.play(AssetSource(myAudioFilePath));
//                 print("Audio Play");
//               },
//               child: const Text("Play")),
//               ElevatedButton(
//               onPressed: () async{
//                 await audioplayer.pause();
//                 print("Audio Pause");
//               },
//               child: const Text("Pause")),
//               ElevatedButton(
//               onPressed: () async{
//                 await audioplayer.resume();
//                 print("Audio Resume");
//               },
//               child: const Text("Resume")),
//               ElevatedButton(
//               onPressed: () async{
//                 await audioplayer.stop();
//                 print("Audio Stop");
//               },
//               child: const Text("Stop")),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// // wxample 4 : volume control
// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Flutter Music Demo',
//       home: MyMusic(title: 'Flutter Music demo'),
//     );
//   }
// }

// class MyMusic extends StatefulWidget {
//   const MyMusic({Key? key, required this.title});

//   final String title;

//   @override
//   State<MyMusic> createState() => _MyMusicState();
// }

// class _MyMusicState extends State<MyMusic> {
//   String myAudioFilePath = "audio/samplefile.mp3";
//   AudioPlayer audioplayer = AudioPlayer();

//   bool isPlaying = false;
//   bool audioPlayed = false;

//   double volume = 0.5;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Flutter Audio demo with button ...",
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Flutter Music App with Controls"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               ElevatedButton.icon(
//                 icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
//                 label: Text(isPlaying ? "Pause" : "Play"),
//                 onPressed: () async {
//                   if (!isPlaying && !audioPlayed) {
//                     await audioplayer.play(AssetSource(myAudioFilePath));
//                     setState(() {
//                       isPlaying = true;
//                       audioPlayed = true;
//                     });
//                   } else if (audioPlayed && !isPlaying) {
//                     await audioplayer.resume();
//                     setState(() {
//                       isPlaying = true;
//                       audioPlayed = true;
//                     });
//                   } else {
//                     await audioplayer.pause();
//                     setState(() {
//                       isPlaying = false;
//                     });
//                   }
//                 },
//                 onLongPress: () async {
//                   await audioplayer.stop();
//                   setState(() {
//                     isPlaying = false;
//                     audioPlayed = false;
//                   });
//                 },
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   IconButton(
//                     icon: const Icon(Icons.volume_down),
//                     onPressed: () {
//                       if (volume > 0.0) {
//                         setState(() {
//                           volume -= 0.1;
//                           audioplayer.setVolume(volume);
//                         });
//                       }
//                     },
//                   ),
//                   const Text('Volume'),
//                   IconButton(
//                     icon: const Icon(Icons.volume_up),
//                     onPressed: () {
//                       if (volume < 1.0) {
//                         setState(() {
//                           volume += 0.1;
//                           audioplayer.setVolume(volume);
//                         });
//                       }
//                     },
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// //example for volume up- down by slider

// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Flutter Music Demo',
//       home: MyMusic(title: 'Flutter Music demo'),
//     );
//   }
// }

// class MyMusic extends StatefulWidget {
//   const MyMusic({Key? key, required this.title});

//   final String title;

//   @override
//   State<MyMusic> createState() => _MyMusicState();
// }

// class _MyMusicState extends State<MyMusic> {
//   String myAudioFilePath = "audio/sam.mp3";
//   AudioPlayer audioplayer = AudioPlayer();

//   bool isPlaying = false;
//   bool audioPlayed = false;

//   double volume = 0.5;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Flutter Audio demo with button ...",
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Flutter Music App with Controls"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               ElevatedButton.icon(
//                 icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
//                 label: Text(isPlaying ? "Pause" : "Play"),
//                 onPressed: () async {
//                   if (!isPlaying && !audioPlayed) {
//                     await audioplayer.play(AssetSource(myAudioFilePath));
//                     setState(() {
//                       isPlaying = true;
//                       audioPlayed = true;
//                     });
//                   } else if (audioPlayed && !isPlaying) {
//                     await audioplayer.resume();
//                     setState(() {
//                       isPlaying = true;
//                       audioPlayed = true;
//                     });
//                   } else {
//                     await audioplayer.pause();
//                     setState(() {
//                       isPlaying = false;
//                     });
//                   }
//                 },
//                 onLongPress: () async {
//                   await audioplayer.stop();
//                   setState(() {
//                     isPlaying = false;
//                     audioPlayed = false;
//                   });
//                 },
//               ),
//               Slider(
//                 value: volume,
//                 min: 0.0,
//                 max: 1.0,
//                 onChanged: (newValue) {
//                   setState(() {
//                     volume = newValue;
//                     audioplayer.setVolume(volume);
//                   });
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Music Demo',
      home: _SimpleExampleApp(),
    );
  }
}
class _SimpleExampleApp extends StatefulWidget {
  const _SimpleExampleApp();

  @override
  _SimpleExampleAppState createState() => _SimpleExampleAppState();
}

class _SimpleExampleAppState extends State<_SimpleExampleApp> {
  late AudioPlayer player = AudioPlayer();

  @override
  void initState() {
    super.initState();

    // Create the audio player.
    player = AudioPlayer();

    // Set the release mode to keep the source after playback has completed.
    player.setReleaseMode(ReleaseMode.stop);

    // Start the player as soon as the app is displayed.
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await player.setSource(AssetSource('audio/sam.mp3'));
      await player.resume();
    });
  }

  @override
  void dispose() {
    // Release all sources and dispose the player.
    player.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Player'),
      ),
      body: PlayerWidget(player: player),
    );
  }
}

// The PlayerWidget is a copy of "/lib/components/player_widget.dart".
//#region PlayerWidget

class PlayerWidget extends StatefulWidget {
  final AudioPlayer player;

  const PlayerWidget({
    required this.player,
    Key? key, 
  }) : super(key: key); 

  @override
  State<StatefulWidget> createState() {
    return _PlayerWidgetState();
  }
}

class _PlayerWidgetState extends State<PlayerWidget> {
  PlayerState? _playerState;
  Duration? _duration;
  Duration? _position;

  StreamSubscription? _durationSubscription;
  StreamSubscription? _positionSubscription;
  StreamSubscription? _playerCompleteSubscription;
  StreamSubscription? _playerStateChangeSubscription;

  bool get _isPlaying => _playerState == PlayerState.playing;

  bool get _isPaused => _playerState == PlayerState.paused;

  String get _durationText => _duration?.toString().split('.').first ?? '';

  String get _positionText => _position?.toString().split('.').first ?? '';

  AudioPlayer get player => widget.player;



  @override
  void initState() {
    super.initState();
    // Use initial values from player
    _playerState = player.state;
    player.getDuration().then(
          (value) => setState(() {
            _duration = value;
          }),
        );
    player.getCurrentPosition().then(
          (value) => setState(() {
            _position = value;
          }),
        );
    _initStreams();
  }

  @override
  void setState(VoidCallback fn) {
    // Subscriptions only can be closed asynchronously,
    // therefore events can occur after widget has been disposed.
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void dispose() {
    _durationSubscription?.cancel();
    _positionSubscription?.cancel();
    _playerCompleteSubscription?.cancel();
    _playerStateChangeSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              key: const Key('play_button'),
              onPressed: _isPlaying ? null : _play,
              iconSize: 48.0,
              icon: const Icon(Icons.play_arrow),
              color: color,
            ),
            IconButton(
              key: const Key('pause_button'),
              onPressed: _isPlaying ? _pause : null,
              iconSize: 48.0,
              icon: const Icon(Icons.pause),
              color: color,
            ),
            IconButton(
              key: const Key('stop_button'),
              onPressed: _isPlaying || _isPaused ? _stop : null,
              iconSize: 48.0,
              icon: const Icon(Icons.stop),
              color: color,
            ),
          ],
        ),
        Slider(
          onChanged: (value) {
            final duration = _duration;
            if (duration == null) {
              return;
            }
            final position = value * duration.inMilliseconds;
            player.seek(Duration(milliseconds: position.round()));
          },
          value: (_position != null &&
                  _duration != null &&
                  _position!.inMilliseconds > 0 &&
                  _position!.inMilliseconds < _duration!.inMilliseconds)
              ? _position!.inMilliseconds / _duration!.inMilliseconds
              : 0.0,
        ),
        Text(
          _position != null
              ? '$_positionText / $_durationText'
              : _duration != null
                  ? _durationText
                  : '',
          style: const TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }

  void _initStreams() {
    _durationSubscription = player.onDurationChanged.listen((duration) {
      setState(() => _duration = duration);
    });

    _positionSubscription = player.onPositionChanged.listen(
      (p) => setState(() => _position = p),
    );

    _playerCompleteSubscription = player.onPlayerComplete.listen((event) {
      setState(() {
        _playerState = PlayerState.stopped;
        _position = Duration.zero;
      });
    });

    _playerStateChangeSubscription =
        player.onPlayerStateChanged.listen((state) {
      setState(() {
        _playerState = state;
      });
    });
  }

  Future<void> _play() async {
    await player.resume();
    setState(() => _playerState = PlayerState.playing);
  }

  Future<void> _pause() async {
    await player.pause();
    setState(() => _playerState = PlayerState.paused);
  }

  Future<void> _stop() async {
    await player.stop();
    setState(() {
      _playerState = PlayerState.stopped;
      _position = Duration.zero;
    });
  }
}
