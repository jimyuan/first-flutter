import 'dart:math';
import 'package:flutter/material.dart';

// class MyAnimationApp extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.lime,
//       ),
//       home: AnimationGroup(title: '小动画实验'),
//     );
//   }
// }

class MyAnimationApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('学习简单动画'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MotionBox(),
            MotionBox(),
          ],
        ),
      )
    );
  }
}

class MotionBox extends StatefulWidget {
  MotionBox({Key key}) : super(key: key);

  _MotionBoxState createState() => _MotionBoxState();
}

class _MotionBoxState extends State<MotionBox> {
  double _w = 300;
  double _h = 300;
  double _r = 20;
  Color tc = Colors.white;
  Color bg = Colors.red;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      width: _w,
      height: _h,
      child: FlatButton(
        onPressed: () {
          setState(() {
            final random = Random();
            _w = random.nextInt(300).toDouble();
            if (_w < 30) _w = 100.0;
            _h = random.nextInt(300).toDouble();
            if (_h < 30) _h = 50.0;
            _r = random.nextInt(30).toDouble();
            bg = Color.fromRGBO(
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
              1,
            );
          });
        },
        color: bg,
        textColor: tc,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(_r),
        ),
        child: Text('child'),
      ),
    );
  }
}