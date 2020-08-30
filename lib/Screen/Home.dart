import 'package:flutter/material.dart';
import 'package:iosnotes_clone/Data/Folder.dart';
import 'package:iosnotes_clone/Data/Gmail.dart';
import 'package:iosnotes_clone/Widget/List.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        actions: [
          Expanded(
            child: InkWell(
              child: Container(
                padding: EdgeInsets.only(right: 30),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Edit', style: TextStyle(color: Colors.deepOrange.shade300, fontWeight: FontWeight.w400,fontSize: 16),)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[50],
          child: Column(
            children: <Widget>[
              Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text('Folders', style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.w700, fontSize: 35),),
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('GMAIL', style: TextStyle(color: Colors.grey[600],fontSize: 18),),
                        Icon(Icons.keyboard_arrow_down, size: 28, color: Colors.grey[600],)
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Divider(
                        height: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: gmailList.length,
                          itemBuilder: (context, index){
                            return Container(
                              child: FolderList(folder: gmailList[index],),
                            );
                          }
                      ),
                    ),
                    Divider(
                      height: 1,
                      color: Colors.grey[400],
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('ON MY IPHONE', style: TextStyle(color: Colors.grey[600],fontSize: 18),),
                        Icon(Icons.keyboard_arrow_down, size: 28, color: Colors.grey[600],)
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Divider(
                        height: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: onMyPhone.length,
                          itemBuilder: (context, index){
                            return Container(
                              child: FolderList(folder: onMyPhone[index],),
                            );
                          }
                      ),
                    ),
                    Divider(
                      height: 1,
                      color: Colors.grey[400],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
