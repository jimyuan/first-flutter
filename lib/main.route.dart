import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Colors.white
      ),
      routes: {
        'new_page': (context) => NewPage()
      },
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Title'),
      ),
      body: Center(
        child: GotoPage(),
      ),
    );
  }
}

class GotoPage extends StatefulWidget {
  GotoPage({Key key}): super(key: key);
  @override
  _GotoPage createState() => _GotoPage();
}

class _GotoPage extends State<GotoPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, 'new_page', arguments: '通过路由传过来滴参数');
        // Navigator.push(context,
        //   MaterialPageRoute(
        //     builder: (context) => NewPage()
        //   )
        // );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.lime,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        padding: EdgeInsets.all(8),
        child: Text('GotoPage'),
      )
    );
  }
}

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments;
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('New Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(args),
              Image.asset('assets/periodic-table.png'),
            ],
          ),
        ),
      ),
    );
  }
}