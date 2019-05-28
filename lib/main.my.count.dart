import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('计数 demo'),
      ),
      body: Center(
        child: ItemCount(name: '计数啦')
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 8),
          children: <Widget>[
            ListTile(
              title: Text('Drawer'),
              onTap: () => {},
            )
          ],
        ),
      ),
    );
  }
}

class ItemCount extends StatefulWidget {
  final String name;
  ItemCount({this.name});

  @override
  _ItemCountState createState() => _ItemCountState();
}

class _ItemCountState extends State<ItemCount> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          ++count;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        padding: EdgeInsets.all(8),
        child: Text(
          '${widget.name}: $count',
          style: TextStyle(
            fontFamily: 'Arial'
          ),
        ),
      )
    );
  }
}
