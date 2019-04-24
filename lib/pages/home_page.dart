import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  final String title;

  HomePage(this.title);
    
  @override
  State<StatefulWidget> createState() {
    
    return _HomePageState(title);
  }

}

class _HomePageState extends State<HomePage>{

  final String title;

  _HomePageState(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: _dataList(),
    );
  }

  _dataList() {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context , index) {
        return _dataCell();
      },
    );
  }

  _dataCell() { 
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              color: Colors.red,
              width: 60,
              height: 60,
            ),
          ),
          Column(
            
          ),
        ],
      ),
    );
  }

}