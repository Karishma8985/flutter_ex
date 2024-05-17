// import 'package:flutter/material.dart';

// void main() {
//   runApp(image_code());
// }

// class image_code extends StatefulWidget {
//   const image_code({super.key});

//   @override
//   State<image_code> createState() => _image_codeState();
// }

// class _image_codeState extends State<image_code> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Image code',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Flutter image code'),
//         ),
//         body: Column(
//           children: [
//             const Text("image demo",
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 30),
//             ),
//             Image.asset('assets/images/peacock.jpeg',width: 100,height: 100),
//           ],
//         ),
//       ),
//     );
//   }
// }
// 

// example 3: using file from device
 

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// added  image_picker: ^0.6.7+22  at pubspec.yaml


void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

@override
Widget build(BuildContext context) {
	return MaterialApp(
	theme: ThemeData(primaryColor: Colors.green),
	home: const MultipleImageSelector(),
	debugShowCheckedModeBanner: false,
	);
}
}

class MultipleImageSelector extends StatefulWidget {
const MultipleImageSelector({super.key});

@override
State<MultipleImageSelector> createState() => _MultipleImageSelectorState();
}

class _MultipleImageSelectorState extends State<MultipleImageSelector> {
List<File> selectedImages = [];
final picker = ImagePicker();
@override
Widget build(BuildContext context) {
	// display image selected from gallery
	return Scaffold(
	appBar: AppBar(
		title: const Text('Multiple Images Select'),
		backgroundColor: Colors.green,
		actions: const [],
	),
	body: Center(
		child: Column(
		mainAxisAlignment: MainAxisAlignment.center,
		children: [
			const SizedBox(
			height: 20,
			),
			ElevatedButton(
			style: ButtonStyle(
				backgroundColor: MaterialStateProperty.all(Colors.green)),
			child: const Text('Select Image from Gallery and Camera'),
			onPressed: () {
				getImages();
			},
			),
			const Padding(
			padding: EdgeInsets.symmetric(vertical: 18.0),
			child: Text(
				"GFG",
				textScaleFactor: 3,
				style: TextStyle(color: Colors.green),
			),
			),
			Expanded(
			child: SizedBox(
				width: 300.0,
				child: selectedImages.isEmpty
					? const Center(child: Text('Sorry nothing selected!!'))
					: GridView.builder(
						itemCount: selectedImages.length,
						gridDelegate:
							const SliverGridDelegateWithFixedCrossAxisCount(
								crossAxisCount: 3),
						itemBuilder: (BuildContext context, int index) {
						return Center(
							child: kIsWeb
								? Image.network(selectedImages[index].path)
								: Image.file(selectedImages[index]));
						},
					),
			),
			),
		],
		),
	),
	);
}

Future getImages() async {
	final pickedFile = await picker.pickMultiImage(
		imageQuality: 100, maxHeight: 1000, maxWidth: 1000);
	List<XFile> xfilePick = pickedFile;

	setState(
	() {
		if (xfilePick.isNotEmpty) {
		for (var i = 0; i < xfilePick.length; i++) {
			selectedImages.add(File(xfilePick[i].path));
		}
		} else {
		ScaffoldMessenger.of(context).showSnackBar(
			const SnackBar(content: Text('Nothing is selected')));
		}
	},
	);
}
}


