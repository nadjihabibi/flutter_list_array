import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<int> items = List();

  void initState() {
    for (int i = 0; i <= 10; i++) {
      items.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          elevation: 10.0,
          title: Text('Flutter ListView'),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int indext) {
            return Column(
              children: <Widget>[
                ListTile(
                  title: Text('Data Nomer : $indext'),
                  trailing: Icon(Icons.favorite_border, color: Colors.red,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Divider(color: Colors.green,),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
