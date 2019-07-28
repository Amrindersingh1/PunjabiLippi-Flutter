import 'package:flutter/material.dart';
import 'package:punjabilipi/models/characters.dart';
import 'package:punjabilipi/StyleConstants.dart';
import 'package:punjabilipi/pages/CharacterDetailScreen.dart';

class CharacterWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;


    return InkWell(
      onTap: () {
        Navigator.push(context, PageRouteBuilder(
          transitionDuration: const Duration(microseconds: 350),
          pageBuilder: (context, _, __) => CharacterDetailScreen(character: characters[0])
        ));
      },
      child: Stack(
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
                    colors: characters[0].colors,
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
              tag: "image-${characters[0].name}",
              child: Image.asset(
                characters[0].imagePath,
                height: ScreenHeight * 0.55,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 32, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(characters[0].name, style: AppTheme.heading,),
                Text("Tap to read more", style: AppTheme.subHeading,)
              ],
            ),
          )
        ],
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