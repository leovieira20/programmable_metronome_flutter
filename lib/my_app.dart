import 'package:flutter/material.dart';
import 'package:programmable_metronome_flutter/ioc.dart';
import 'package:programmable_metronome_flutter/pages/my_homepage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ioc<MyHomePage>(),
    );
  }
}