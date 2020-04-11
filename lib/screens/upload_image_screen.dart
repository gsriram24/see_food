import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';

import 'meal_detail_screen.dart';

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
    Navigator.of(context).pushNamed(MealDetailScreen.routeName,
        arguments: recognitions[0]['index']);
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(50),
              child: _image == null
                  ? Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Center(
                        child: Text(
                          'No image selected.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    )
                  : Image.file(
                      _image,
                      alignment: Alignment.center,
                      fit: BoxFit.contain,
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.4,
                    ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton.icon(
                  onPressed: getImageFromCamera,
                  elevation: 7,
                  icon: Icon(Icons.camera),
                  label: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 12, 8, 12),
                    child: Text(
                      'Open Camera',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  textColor: Colors.white,
                  color: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                ),
                RaisedButton.icon(
                  onPressed: getImageFromGallery,
                  elevation: 7,
                  icon: Icon(Icons.image),
                  label: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 12, 8, 12),
                    child: Text(
                      'Open Gallery',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  textColor: Colors.white,
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                ),
              ],
            ),
            RaisedButton.icon(
              onPressed: predictOnImage,
              icon: Icon(Icons.remove_red_eye),
              label: Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: Text('See Food!',
                    style: TextStyle(
                      fontSize: 19,
                    )),
              ),
              elevation: 7,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              color: Theme.of(context).accentColor,
            )
          ],
        ),
      ),
    );
  }
}
