import 'package:flutter/material.dart';

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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Stack(
          // Stack is a layout widget. It takes a list of children and
          // arranges them horizontally. By default, it sizes itself to fit
          // its children vertically, and tries to be as wide as its parent.
          //
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.red,
                  width: 200,
                  height: 300,
                ),
                Container(
                  color: Colors.blue,
                  width: 200,
                  height: 300,
                ),
              ],
            ),
            Positioned(child: Text('hi'), left: 10, top: 30),
            Positioned(child: Text('there'), left: 100, top: 500),
            Positioned(
                child: TextButton(
                    child: Text('CLICKER'),
                    onPressed: () {
                      print('clicker');
                    }),
                left: 30,
                top: 30),
            Align(
              alignment: Alignment(-0.84, -0.71),
              child: ElevatedButton(
                onPressed: () {
                  print('Button pressed ...');
                },
                child: Text('Click me!'),
                // text: 'Button',
                // options: FFButtonOptions(
                //   width: 130,
                //   height: 40,
                //   color: FlutterFlowTheme.primaryColor,
                //   textStyle: FlutterFlowTheme.subtitle2.override(
                //     fontFamily: 'Poppins',
                //     color: Colors.white,
                //   ),
                //   borderSide: BorderSide(
                //     color: Colors.transparent,
                //     width: 1,
                //   ),
                //   borderRadius: 12,
                // ),
              ),
            ),
            Align(
              alignment: Alignment(0.43, -0.68),
              child: Text(
                'Hello World',
                // style: FlutterFlowTheme.bodyText1.override(
                //   fontFamily: 'Poppins',
                // ),
              ),
            ),
            Align(
              alignment: Alignment(-0.8, -0.22),
              child: ElevatedButton(
                onPressed: () {
                  print('Button pressed ...');
                },
                child: Text('Click me again!'),
                // text: 'Button',
                // options: FFButtonOptions(
                //   width: 130,
                //   height: 40,
                //   color: FlutterFlowTheme.primaryColor,
                //   textStyle: FlutterFlowTheme.subtitle2.override(
                //     fontFamily: 'Poppins',
                //     color: Colors.white,
                //   ),
                //   borderSide: BorderSide(
                //     color: Colors.transparent,
                //     width: 1,
                //   ),
                //   borderRadius: 12,
                // ),
              ),
            ),
            Align(
              alignment: Alignment(0.71, -0.23),
              child: Text(
                'Hello World',
                style: new TextStyle(
                    fontSize: 28.0,
                    color: const Color(0x4F002244),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto"),
                // style: ,
                // style: FlutterFlowTheme.bodyText1.override(
                //   fontFamily: 'Poppins',
                //   fontSize: 24,
                // ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
