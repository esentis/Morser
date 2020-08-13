import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import 'helpers/methods.dart';

var assetsAudioPlayer = AssetsAudioPlayer();
int _previousTextLength = 0;
var logger = Logger();
String lastAdded = '';
List<String> morse = [''];
var _textController = TextEditingController();

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String morseCode(List<String> characters) {
    var letter = '';
    characters.forEach((character) {
      letter += character;
    });
    print(letter);
    return letter;
  }

  void textChanges() {
    if (_textController.text.isEmpty) {
      morse = [''];
      setState(() {});
      return;
    }
    var letter = _textController.text
        .substring(_textController.text.length - 1, _textController.text.length)
        .toUpperCase();

    if (_previousTextLength > _textController.text.length) {
      _previousTextLength = _textController.text.length;
      logger.w('Deleting...');
      setState(() {
        morse.removeLast();
      });
      return;
    }

    if (letter == ' ') {
      letter = 'space';
    }
    letter = checkSpecialCharacter(letter);

    try {
      assetsAudioPlayer.open(
        Audio('assets/morse/$letter.mp3'),
      );
    } catch (e) {
      print(e);
    }
    setState(() {
      morse.add(morseCharacter(letter));
    });
    _previousTextLength = _textController.text.length;
  }

  @override
  void initState() {
    super.initState();
    _textController.addListener(textChanges);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Morser')),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: _textController,
              ),
              Text(
                morseCode(morse),
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
