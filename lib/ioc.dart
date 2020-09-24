import 'package:get_it/get_it.dart';
import 'package:programmable_metronome_flutter/domain/services/audio_player.dart';
import 'package:programmable_metronome_flutter/my_app.dart';
import 'package:programmable_metronome_flutter/pages/my_homepage.dart';

GetIt ioc = GetIt.instance;

setupIoc() {
  ioc.registerSingleton(AudioPlayer());
  ioc.registerSingleton(MyApp());
  ioc.registerFactory(() => MyHomePage(player: ioc<AudioPlayer>(),));
}