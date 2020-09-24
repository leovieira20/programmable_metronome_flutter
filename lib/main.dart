import 'package:flutter/material.dart';
import 'package:programmable_metronome_flutter/ioc.dart';
import 'package:programmable_metronome_flutter/my_app.dart';

void main() {
  setupIoc();
  runApp(ioc<MyApp>());
}
