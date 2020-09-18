import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Over Screens',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      routes: {

        '/': (context) => MainPage(),

        '/second': (context) => SecondPage(),
      },
      initialRoute: '/',
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: Text('Navigation over screens'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[

              RaisedButton(
                onPressed: () => Navigator.pushNamed(context, '/second'),
                child: Text('Navigate using routes'),
              ),

              RaisedButton(
                onPressed: () =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
                    ),
                child: Text('Navigate using push method'),
              )
            ],
          ),
        ),
      );
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second screen'),
      ),
      body: Container(
        child: RaisedButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Back'),
        ),
      ),
    );
  }
}