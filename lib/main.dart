import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom navigation',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bottom navigation"),
        ),
        body: SnackBarBody());
  }
}

class SnackBarBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RaisedButton(
          child: Text(
            'Click me!',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text('Snack bar activated'),
                duration: Duration(seconds: 3),
              ),
            );
          },
          color: Colors.red,
        ),
      ),
    );
  }
}
