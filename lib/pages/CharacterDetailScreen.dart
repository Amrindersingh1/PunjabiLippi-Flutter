import 'package:flutter/material.dart';
import 'package:punjabilipi/models/characters.dart';
import 'package:punjabilipi/StyleConstants.dart';
import 'package:after_layout/after_layout.dart';

class CharacterDetailScreen extends StatefulWidget {
  final Character character;
  final double _expandedBottomSheetBottomPosition = 0;
  final double _collapsedBottomSheetBottomPosition = -250;
  final double _completeCollapsedBottomSheetBottomPosition = -330;
  const CharacterDetailScreen({Key key, this.character});

  @override
  _CharacterDetailScreenState createState() => _CharacterDetailScreenState();
}

class _CharacterDetailScreenState extends State<CharacterDetailScreen>{

  double _bottomSheetBottomPosition = -330;
  bool isCollapsed = true;

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
          Column(
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
                alignment: Alignment.topCenter,
                heightFactor: 0.8,
                child: Hero(tag: "text-${widget.character.word}",child: Material(
                  type: MaterialType.transparency,
                  child: Text(
                    widget.character.word,
                    style: AppTheme.punjabiCharacterDetail,
                  ),
                )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 1),
                child: Hero(tag: "text-${widget.character.name}",child: Material(type: MaterialType.transparency,child: Text(widget.character.name, style: AppTheme.heading,))),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 0, 8, 0),
                child: Text("Pronunciation Example : \n"+widget.character.description, style: AppTheme.subHeading,),
              )
            ],
          ),
        ],
      ),
    );
  }
}


