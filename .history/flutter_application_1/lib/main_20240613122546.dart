import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart' show rootBundle;

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
        body: AudioPlayerWidget(), // Replace with your widget for main content
      ),
    );
  }
}

class AudioPlayerWidget extends StatefulWidget {
  @override
  _AudioPlayerWidgetState createState() => _AudioPlayerWidgetState();
}

class _AudioPlayerWidgetState extends State<AudioPlayerWidget> {
  AudioPlayer _audioPlayer;
  AudioCache _audioCache;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _audioCache = AudioCache();

    // Play audio file when the widget initializes
    _playAudio();
  }

  Future<void> _playAudio() async {
    // Load and play the audio file from assets
    await _audioCache
        .play('assets/audio.mp3'); // Adjust filename as per your asset

    // You can also use _audioPlayer.play() for network URLs or local files outside assets
  }

  @override
  void dispose() {
    _audioPlayer.dispose(); // Release resources when widget is disposed
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
