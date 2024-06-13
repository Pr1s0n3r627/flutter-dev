import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart'; // Import AudioCache

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Play Audio on Open',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Play Audio on Open'),
        ),
        body: AudioPlayerWidget(),
      ),
    );
  }
}

class AudioPlayerWidget extends StatefulWidget {
  @override
  _AudioPlayerWidgetState createState() => _AudioPlayerWidgetState();
}

class _AudioPlayerWidgetState extends State<AudioPlayerWidget> {
  AudioCache _audioCache;

  @override
  void initState() {
    super.initState();
    _audioCache = AudioCache();

    // Play audio file when the widget initializes
    _playAudio();
  }

  Future<void> _playAudio() async {
    // Load and play the audio file from assets
    await _audioCache.play('audio.mp3'); // Adjust filename as per your asset
  }

  @override
  void dispose() {
    // Release resources when widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Audio is playing!',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
