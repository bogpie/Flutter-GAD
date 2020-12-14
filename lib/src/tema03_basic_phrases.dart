import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:audioplayer/audioplayer.dart';

void main() {
  runApp(BasicPhrasesApp());
}

class BasicPhrasesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String tempFileUri = '';
  int currentIndex = -1;
  List<String> tempFileUris = <String>[];
  AudioPlayer player = AudioPlayer();

  List<String> phrases = <String>[
    'buna',
    'buna (franceza)',
    'multumesc',
    'multumesc (franceza)',
    'va rog',
    'va rog (franceza)',
    'scuzati-ma',
    'scuzati-ma (franceza)'
  ];

  void _playSound() {
    tempFileUri = tempFileUris[currentIndex];
    player.play(tempFileUri);
  }

  Future<void> _loadSound() async {
    final Directory tempDir = await getTemporaryDirectory();
    ByteData data;

    for (int i = 0; i < 8; ++i) {
      final File tempFile = File('${tempDir.path}/$i.mp3');
      final String path = 'assets/$i.mp3';
      data = await rootBundle.load(path);
      await tempFile.writeAsBytes(data.buffer.asUint8List(), flush: true);
      tempFileUri = tempFile.uri.toString();
      tempFileUris.add(tempFileUri);
    }
  }

  @override
  void initState() {
    super.initState();
    _loadSound();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Basic Phrases'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: 8,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 32.0,
            mainAxisSpacing: 32.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                gradient: const LinearGradient(
                  colors: <MaterialColor>[
                    Colors.lightBlue,
                    Colors.blue,
                    Colors.lightBlue,
                  ],
                  begin: FractionalOffset.centerLeft,
                  end: FractionalOffset.centerRight,
                ),
              ),
              child: FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                child: Text(
                  phrases[index],
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  player.stop();
                  currentIndex = index;
                  _playSound();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
