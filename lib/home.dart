import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
// list widget define
  final textLine = (String text) => Container(
    padding: EdgeInsets.all(8.0),
    margin: EdgeInsets.only(bottom: 5.0),
    width: 200.0,
    color: Colors.blue[300],
    child: Text(text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 16.0
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, 'words');
            },
            child: textLine('学习 StatefulWidget'),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, 'router');
            },
            child: textLine('学习 Multi Page Router'),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, 'counter');
            },
            child: textLine('学习 Counter & Drawer'),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, 'official-counter');
            },
            child: textLine('学习官方 Counter Demo'),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, 'form');
            },
            child: textLine('学习 Form Widget'),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, 'animation');
            },
            child: textLine('学习 Flutter Animation'),
          ),
        ],
      ) ,
    );
  }
}