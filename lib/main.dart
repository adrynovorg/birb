import 'dart:convert';

import 'package:http/http.dart' show get;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import 'package:burb/ui/nocontent.dart';
import 'package:burb/models/Photo.dart';
import 'package:burb/models/Post.dart';

import 'package:burb/photos/photo_list.dart';

void main() {
  runApp(MyApp());
}

Future<Post> fetchPost(int postId) async {
  final response =
      await get('http://jsonplaceholder.typicode.com/posts/$postId');

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON
    return Post.fromJson(json.decode(response.body));
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load post');
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blirbs',
      theme: ThemeData(
        // primarySwatch: Colors.red,
        brightness: Brightness.light,
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MyHomePage(title: 'Birb'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Photo> photos = [];
  int counter = 0;

  Future<Photo> fetchImage() async {
    ++counter;
    final response =
        await get('http://jsonplaceholder.typicode.com/photos/$counter');

    if (response.statusCode == 200) {
      final Photo photo = Photo.fromJson(jsonDecode(response.body));
      setState(() {
        photos.add(photo);
      });
      return photo;
    } else {
      throw Exception('No photo');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
        elevation: 0.0,
      ),
      body: PhotoList(photos), // const NoContent(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
