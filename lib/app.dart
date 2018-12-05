import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' show get;
import './models/image_model.dart';
import './widgets/image_list.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];
  void fechImage() async {
    counter++;
    var response =
        await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var image = ImageModel.fromJson(json.decode(response.body));
    setState(() {
      images.add(image);
    });
  }

  Widget build(context) {
    return MaterialApp(
        home: Scaffold(
      body: ImageList(images),
      appBar: AppBar(title: Text("AppBar Title 1")),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            fechImage();
          }),
    ));
  }
}
