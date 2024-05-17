import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


void main()
{
  runApp(const ImagePickerApp());
}

class ImagePickerApp extends StatelessWidget {
  const ImagePickerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: ImagePickerScreen(),
    );
  }
}

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {

  File? _image;

  Future<void> _getImageFromGallery() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery,
    );

    if(pickedFile != null){
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image picker Example'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _image!=null 
              ? Image.file(_image!,
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                )
              : const Text("No Image Selected"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _getImageFromGallery, 
              child: const Text("Pick Image"),
            ),          
          ],
        ),
      )
    );
  }
}