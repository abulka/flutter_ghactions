import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: ConvertedPageClass(title: 'Flutter Demo Home Page'),
    );
  }
}

class ConvertedPageClass extends StatefulWidget {
  ConvertedPageClass({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ConvertedPageClassState createState() => _ConvertedPageClassState();
}

class _ConvertedPageClassState extends State<ConvertedPageClass> {
  void _incrementCounter() {
    setState(() {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(0.0),
        child: Text('@string/hello_first_fragment',
            style: TextStyle(color: Colors.yellow, fontSize: 30.0)),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: '@string/next',
        heroTag: "@string/next",
        onPressed: () {
          Navigator.pushNamed(context, "/login");
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   tooltip: 'Button',
      //   heroTag: "Button",
      //   onPressed: () {
      //     Navigator.pushNamed(context, "/login");
      //   },
      // ),
      // floatingActionButton: FloatingActionButton(
      //   tooltip: 'BBBBBB',
      //   heroTag: "BBBBBB",
      //   onPressed: () {
      //     Navigator.pushNamed(context, "/login");
      //   },
      // ),
      // floatingActionButton: FloatingActionButton(
      //   tooltip: 'Button',
      //   heroTag: "Button",
      //   onPressed: () {
      //     Navigator.pushNamed(context, "/login");
      //   },
      // ),
    );
  }
}
