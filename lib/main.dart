import 'package:flutter/material.dart';
import 'package:slide_list_view/SlideListView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slide List View Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SlideListView(
          view1: buildPage(Colors.red, "Page 1"),
          view2: buildPage(Colors.green, "Page 2"),
          floatingActionButtonColor: Colors.yellow[800],
          floatingActionButtonIcon: AnimatedIcons.view_list,
          showFloatingActionButton: true,
          defaultView: "slides",
          duration: Duration(
            milliseconds: 800,
          ),
        ),
      ),
    );
  }

  Container buildPage(Color color, String text) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 50.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
