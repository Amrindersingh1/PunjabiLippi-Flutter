import 'package:flutter/material.dart';
import 'package:punjabilipi/models/characters.dart';
import 'package:punjabilipi/StyleConstants.dart';
import 'package:punjabilipi/pages/CharacterDetailScreen.dart';
import 'package:punjabilipi/Gradients.dart';
import 'package:audioplayers/audio_cache.dart';


class CharacterWidget extends StatelessWidget {

  final Character character;
  final PageController pageController;
  final int currentPage;

  const CharacterWidget({Key key, this.character, this.pageController, this.currentPage}) : super(key: key);

  void playSound(var soundName) async {
    if(soundName==null) {
      soundName='oorhaa.mp3';
    }
    final AudioCache audioPlayer = AudioCache();
    audioPlayer.play('audios/$soundName');
  }

  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    final cardColor = Gradients.getGradient();

    return InkWell(
      onTap: () {
        Navigator.push(context, PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 350),
          pageBuilder: (context, _, __) => CharacterDetailScreen(character: character, colors: cardColor,)
        ));
      },
      child: AnimatedBuilder(
        animation: pageController,
        builder: (context, child) {
          double value = 1;
          if (pageController.position.haveDimensions) {
            value = pageController.page - currentPage;
            value = (1 - (value.abs() * 0.6)).clamp(0.0, 1.0);
          }
          return Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomCenter,
                child: ClipPath(
                  clipper: CharacterCardClipper(),
                  child: Hero(
                    tag: 'backgroundCard',
                    child: Container(
                      height: 0.55 * ScreenHeight,
                      width: 0.9 * ScreenWidth,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: cardColor,
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                          )),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0,-0.5),
                child: Hero(
                  tag: "word-${character.word}",
                  child: Material(
                    type: MaterialType.transparency,
                    child: Text(
                      character.word,
                      style: AppTheme.punjabiCharacter.copyWith(
                        fontSize: 400 * value,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 32, bottom: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                      child: Hero(
                        tag: "audio-${character.word}",
                        child: Material(
                          type: MaterialType.transparency,
                          child: IconButton(
                            icon: Icon(Icons.play_circle_outline),
                            tooltip: 'play',
                            color: Colors.white,
                            iconSize: 70,
                            onPressed: () {
                              playSound(character.audio);
                            },
                          ),
                        ),
                      ),
                    ),
                    Hero(tag: "text-${character.name}",child: Material(type: MaterialType.transparency, child: Text(character.name, style: AppTheme.heading,))),
                    Text("Tap to read more", style: AppTheme.subHeading,)
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

class CharacterCardClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path clippedPath = Path();
    double curveDistance = 40;

    clippedPath.moveTo(0, size.height * 0.4);
    clippedPath.lineTo(0, size.height - curveDistance);
    clippedPath.quadraticBezierTo(1, size.height - 1, 0 + curveDistance, size.height);
    clippedPath.lineTo(size.width - curveDistance, size.height);
    clippedPath.quadraticBezierTo(
        size.width + 1, size.height - 1, size.width, size.height - curveDistance);
    clippedPath.lineTo(size.width, 0 + curveDistance);
    clippedPath.quadraticBezierTo(
        size.width - 1, 0, size.width - curveDistance - 5, 0 + curveDistance / 3);
    clippedPath.lineTo(curveDistance, size.height * 0.29);
    clippedPath.quadraticBezierTo(1, (size.height * 0.30) + 10, 0, size.height * 0.4);
    return clippedPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}