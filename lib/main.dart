import 'package:flutter/material.dart';
import 'package:my_flutter/words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.yellowAccent,
      ),
      routes: {
        'words': (context)=>RandomWords()
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('学习 flutter 好榜样'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  print('aa');
                  Navigator.of(context).pushNamed('words');
                },
                child: textLine('data1'),
              ),
              textLine('data2'),
            ],
          ) ,
        )
      )
    );
  }
}