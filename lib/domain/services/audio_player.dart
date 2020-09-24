import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayer {
  AudioCache _player = AudioCache(prefix: "assets/sounds/");

  AudioPlayer() {
    _player.loadAll(["fx_clic.wav"]);
  }

  Future<void> play() async {
    await _player.play("fx_clic.wav", mode: PlayerMode.LOW_LATENCY);
  }
}