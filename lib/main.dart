import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:burb/ui/nocontent.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //     statusBarColor: Colors.lightBlue,
  //     systemNavigationBarColor: Colors.white,
  //     systemNavigationBarDividerColor: Colors.black,
  //     systemNavigationBarIconBrightness: Brightness.dark));

  const String json =
      '{"albumId": 1,"id": 15,  "title": "harum dicta similique quis dolore earum ex qui"}';
  final Map<String, Object> parsedJson = jsonDecode(json); // json.decode(json);

  print(parsedJson['title']);

  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Some Images')),
        body: Center(child: Text('Hello World')),
        floatingActionButton: FloatingActionButton(
          // child: Icon(Icons.add),
          child: Text('+'),
          tooltip: 'Increment',
          onPressed: () {
            print('Button pressed');
          },
        ),
      ),
    );
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.title),
        ),
        elevation: 0.0,
      ),
      body: const NoContent(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
