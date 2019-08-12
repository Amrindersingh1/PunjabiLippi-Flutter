import 'package:flutter/material.dart';
import 'package:punjabilipi/models/characters.dart';
import 'package:punjabilipi/StyleConstants.dart';
import 'package:after_layout/after_layout.dart';
import 'package:audioplayers/audio_cache.dart';


class CharacterDetailScreen extends StatefulWidget {
  final Character character;
  final List<Color> colors;
  final double _expandedBottomSheetBottomPosition = 0;
  final double _collapsedBottomSheetBottomPosition = -250;
  final double _completeCollapsedBottomSheetBottomPosition = -330;
  const CharacterDetailScreen({Key key, this.character, this.colors});

  @override
  _CharacterDetailScreenState createState() => _CharacterDetailScreenState();
}

class _CharacterDetailScreenState extends State<CharacterDetailScreen> {
  double _bottomSheetBottomPosition = -250;
  bool isCollapsed = true;

  void playSound(var soundName) async {
    if(soundName==null) {
      soundName='oorhaa.mp3';
    }
    final AudioCache audioPlayer = AudioCache();
    audioPlayer.play('audios/$soundName');
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Hero(
              tag: 'backgroundCard',
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                colors: widget.colors,
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ))),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 16),
                    child: IconButton(
                      icon: Icon(Icons.close),
                      iconSize: 40,
                      color: Colors.white.withOpacity(0.8),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )),
                Align(
                  alignment: Alignment(0, -0.2),
                  heightFactor: 0.6,
                  child: Hero(
                      tag: "word-${widget.character.word}",
                      child: Material(
                        type: MaterialType.transparency,
                        child: Text(
                          widget.character.word,
                          style: AppTheme.punjabiCharacterDetail,
                        ),
                      )),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Hero(
                    tag: "audio-${widget.character.word}",
                    child: Material(
                      type: MaterialType.transparency,
                      shape: CircleBorder(),
                      child: IconButton(
                        icon: Icon(Icons.play_circle_outline),
                        tooltip: 'play',
                        color: Colors.white,
                        iconSize: 70,
                        onPressed: () {
                          playSound(widget.character.audio);
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32.0, vertical: 5),
                  child: Hero(
                      tag: "text-${widget.character.name}",
                      child: Material(
                          type: MaterialType.transparency,
                          child: Text(
                            widget.character.name,
                            style: AppTheme.heading,
                          ))),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 0, 8, 0),
                  child: Text(
                    "Pronunciation Example : \n" + widget.character.description,
                    style: AppTheme.subHeading,
                  ),
                ),
              ],
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              curve: Curves.decelerate,
              bottom: _bottomSheetBottomPosition,
              left: 0,
              right: 0,
              child: Container(
                height: 330,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      onTap: _onTap,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        height: 80,
                        child: Text(
                          "ਸ਼ਬਦ (words):",
                          style: AppTheme.subHeading.copyWith(color: Colors.black),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _onTap() {
    setState(() {
      _bottomSheetBottomPosition = isCollapsed
          ? widget._expandedBottomSheetBottomPosition
          : widget._collapsedBottomSheetBottomPosition;
      isCollapsed = !isCollapsed;
    });
  }
}
