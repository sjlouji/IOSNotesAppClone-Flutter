import 'package:flutter/material.dart';
import 'package:iosnotes_clone/Screen/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IOS Notes Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'IOS Notes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
      floatingActionButton: Material(
        child: Container(
          color: Colors.white,
          width: 170,
          height: 60,
          child: FlatButton(
            child: Text('New Folder', style: TextStyle(color: Colors.deepOrange.shade300, fontSize: 16),textAlign: TextAlign.end,),
          ),
        ),
      ),
    );
  }
}
