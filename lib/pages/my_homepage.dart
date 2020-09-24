import 'package:flutter/material.dart';
import 'package:programmable_metronome_flutter/domain/services/audio_player.dart';

class MyHomePage extends StatefulWidget {
  final AudioPlayer player;

  MyHomePage({Key key, this.player}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Stream _tick;
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _tick = Stream.periodic(Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Programmable metronome"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            StreamBuilder<void>(
                stream: _tick,
                builder: (context, snapshot) {
                  return FutureBuilder(
                    future: widget.player.play(),
                    builder: (c, _) {
                      return Text(
                        'Tick: ${_counter++}',
                      );
                    },
                  );
                }),
          ],
        ),
      ),
    );
  }
}
