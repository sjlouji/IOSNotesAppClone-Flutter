import 'package:flutter/material.dart';
import 'package:iosnotes_clone/Model/Folder.dart';
import 'package:iosnotes_clone/Screen/Home.dart';

void main() {
  runApp(FolderList());
}

class FolderList extends StatelessWidget {
  // This widget is the root of your application.
  FolderList({Key key, this.folder}) : super(key: key);

  Folder folder;
  @override
  Widget build(BuildContext context) {
    return FolderListWidget(folder: folder,);
  }
}

class FolderListWidget extends StatefulWidget {
  FolderListWidget({Key key, this.title, this.folder}) : super(key: key);

  final String title;
  Folder folder;
  @override
  _FolderListWidgetState createState() => _FolderListWidgetState();
}

class _FolderListWidgetState extends State<FolderListWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.folder_open_outlined, color: Colors.deepOrange.shade300,)
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(widget.folder.folderName, style: TextStyle(color: Colors.black, fontSize: 20),),
                    ),
                  ],
                ),
                Container(
                  width: 100,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(widget.folder.numberofFiles),
                      Icon(Icons.chevron_right)
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
