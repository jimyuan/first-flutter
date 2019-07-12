import 'package:flutter/material.dart';
import 'home.dart';
import 'words.dart';
import 'route.dart';
import 'count.dart';
import 'official.count.dart';
import 'form.dart';
import 'animation.dart';
import 'my.animation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.yellowAccent,
      ),
      routes: {
        'words': (BuildContext context)=>RandomWords(),
        'router': (BuildContext context) => RouteApp(),
        'counter': (BuildContext context) => CountApp(),
        'official-counter': (BuildContext context) => OfficialCountApp(),
        'form': (BuildContext context) => FormApp(),
        'animation': (BuildContext context) => AnimationApp(),
        'myAnimation': (BuildContext context) => MyAnimationApp(),
      },
      home: HomePage()
    );
  }
}
