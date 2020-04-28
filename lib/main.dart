import 'package:flutter/material.dart';
import 'package:mehdevclub/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meh Dev Club',
      darkTheme: ThemeData.dark()
          .copyWith(primaryColor: Colors.blue, accentColor: Colors.blueAccent),
      theme:
          ThemeData(primarySwatch: Colors.blue, accentColor: Colors.blueAccent),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        '/homepage': (BuildContext context) => HomePage(),
      },
    );
  }
}
