import 'package:flutter/material.dart';

import 'HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Petmedia',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: SelectImage(),
    );
  }
}




