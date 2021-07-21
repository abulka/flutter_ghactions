// import '../flutter_flow/flutter_flow_theme.dart';
// import '../flutter_flow/flutter_flow_util.dart';
// import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';


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
      // home: TwostackWidget(title: 'Flutter Demo Home Page'),
      home: TwostackWidget(),
    );
  }
}


class TwostackWidget extends StatefulWidget {
  TwostackWidget({Key? key}) : super(key: key);

  @override
  _TwostackWidgetState createState() => _TwostackWidgetState();
}

class _TwostackWidgetState extends State<TwostackWidget> {
  late TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(-0.29, -0.17),
                    child: ElevatedButton(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      child: Text('Button'),
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
                    alignment: Alignment(-0.58, -0.71),
                    child: ElevatedButton(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      child: Text('Button'),
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
                    alignment: Alignment(0, -0.54),
                    child: ElevatedButton(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      child: Text('Button'),
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
                    alignment: Alignment(-0.63, -0.35),
                    child: ElevatedButton(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      child: Text('Button'),
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
                    alignment: Alignment(0.46, -0.97),
                    child: Text(
                      'Hello World',
                      // style: FlutterFlowTheme.bodyText1.override(
                      //   fontFamily: 'Poppins',
                      //   color: Color(0xFFBD3131),
                      //   fontSize: 35,
                      // ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 0.17),
                    child: TextFormField(
                      controller: textController,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: '[Some hint text...]',
                        // hintStyle: FlutterFlowTheme.bodyText1.override(
                        //   fontFamily: 'Poppins',
                        // ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                      ),
                      // style: FlutterFlowTheme.bodyText1.override(
                      //   fontFamily: 'Poppins',
                      // ),
                      keyboardType: TextInputType.multiline,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xFF607D8B),
              ),
            )
          ],
        ),
      ),
    );
  }
}
