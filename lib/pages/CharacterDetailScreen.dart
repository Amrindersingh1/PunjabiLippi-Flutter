import 'package:flutter/material.dart';
import 'package:punjabilipi/models/characters.dart';
import 'package:punjabilipi/StyleConstants.dart';

class CharacterDetailScreen extends StatefulWidget {
  final Character character;
  const CharacterDetailScreen({Key key, this.character});

  @override
  _CharacterDetailScreenState createState() => _CharacterDetailScreenState();
}

class _CharacterDetailScreenState extends State<CharacterDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Hero(
            tag: 'backgroundCard',
            child: DecoratedBox(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
              colors: widget.character.colors,
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ))),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 40,
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
                  alignment: Alignment.topRight,
                  child: Hero(tag: "image-${widget.character.name}",child: Image.asset(widget.character.imagePath, height: screenHeight * 0.45,)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8),
                  child: Text(widget.character.name, style: AppTheme.heading,),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 0, 8, 32),
                  child: Text(widget.character.description, style: AppTheme.subHeading,),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
