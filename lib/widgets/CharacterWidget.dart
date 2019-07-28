import 'package:flutter/material.dart';
import 'package:punjabilipi/models/characters.dart';
import 'package:punjabilipi/StyleConstants.dart';
import 'package:punjabilipi/pages/CharacterDetailScreen.dart';

class CharacterWidget extends StatelessWidget {

  final Character character;
  final PageController pageController;
  final int currentPage;

  const CharacterWidget({Key key, this.character, this.pageController, this.currentPage}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;


    return InkWell(
      onTap: () {
        Navigator.push(context, PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 350),
          pageBuilder: (context, _, __) => CharacterDetailScreen(character: character)
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
                            colors: character.colors,
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                          )),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0,-0.9),
                child: Hero(
                  tag: "image-${character.name}",
                  child: Image.asset(
                    character.imagePath,
                    height: ScreenHeight * 0.55 * value,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 32, bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(character.name, style: AppTheme.heading,),
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