import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File _image;
  String predictedLabel;
  Future getImageFromCamera() async {
    var image = await ImagePicker.pickImage(
      source: ImageSource.camera,
      maxHeight: 256,
      maxWidth: 256,
    );
    if (image == null) {
      return;
    }
    setState(() {
      _image = image;
    });
    predictOnImage();
  }

  Future getImageFromGallery() async {
    var image = await ImagePicker.pickImage(
      source: ImageSource.gallery,
      maxHeight: 256,
      maxWidth: 256,
    );
    if (image == null) {
      return;
    }
    setState(() {
      _image = image;
    });
    predictOnImage();
  }

  Future predictOnImage() async {
    var recognitions = await Tflite.runModelOnImage(
      path: _image.path, // required
      imageMean: 0.0, // defaults to 117.0
      imageStd: 255.0, // defaults to 1.0
      numResults: 2, // defaults to 5
      threshold: 0.2, // defaults to 0.1
      asynch: true, // defaults to true
    );
    print(recognitions);
    setState(() {
      predictedLabel = recognitions[0]['label'];
    });
  }

  Future loadModel() async {
    Tflite.close();
    String res = await Tflite.loadModel(
      model: "assets/model.tflite",
      labels: "assets/labels.txt",
      numThreads: 1, // defaults to 1
    );
    print(res);
  }

  @override
  void initState() {
    super.initState();
    loadModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SeeFood'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Food predicted: $predictedLabel',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            _image == null ? Text('No image selected.') : Image.file(_image),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                  onPressed: getImageFromCamera,
                  tooltip: 'Pick Image',
                  child: Icon(Icons.camera),
                ),
                FloatingActionButton(
                  onPressed: getImageFromGallery,
                  tooltip: 'Pick Image',
                  child: Icon(Icons.image),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
