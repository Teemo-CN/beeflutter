import 'package:flutter/material.dart';
import 'package:beeflutter/pages/home_page.dart';
import 'pages/second_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      home: MyHomePage(),
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

  int _currentNum = 0;

  final List<Widget> _list = [HomePage('首页'),SecondPage()];

  final List<BottomNavigationBarItem> _items = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text('首页'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.phone),
      title: Text('电话'),
    ),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        currentIndex: _currentNum,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            _currentNum = index;
          });
        },
      ),
      body: _list[_currentNum],
    );

   

  }
}
