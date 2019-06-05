import 'package:flutter/material.dart';
import 'package:my_flutter/home.dart';
import 'package:my_flutter/words.dart';
import 'package:my_flutter/route.dart';
import 'package:my_flutter/count.dart';
import 'package:my_flutter/official.count.dart';
import 'package:my_flutter/form.dart';
import 'package:my_flutter/animation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.yellowAccent,
      ),
      routes: {
        'words': (context)=>RandomWords(),
        'router': (context) => RouteApp(),
        'counter': (context) => CountApp(),
        'official-counter': (context) => OfficialCountApp(),
        'form': (context) => FormApp(),
        'animation': (context) => AnimationApp(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('学习 flutter 好榜样'),
        ),
        body: HomePage()
      )
    );
  }
}

