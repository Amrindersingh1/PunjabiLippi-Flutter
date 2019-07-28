import 'package:flutter/material.dart';
import 'package:punjabilipi/StyleConstants.dart';
import 'package:punjabilipi/widgets/CharacterWidget.dart';
import 'package:punjabilipi/models/characters.dart';

class CharacterListingScreen extends StatefulWidget {
  @override
  _CharacterListingScreenState createState() => _CharacterListingScreenState();

}

class _CharacterListingScreenState extends State<CharacterListingScreen> {

  PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 1.0,
      initialPage: currentPage,
      keepPage: false
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 40.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 32.0, top: 8.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: "Punjabi Lippi", style: AppTheme.display1),
                      TextSpan(text: "\n"),
                      TextSpan(text: "Gurmukhi", style: AppTheme.display2)
                    ]
                  )
                ),
              ),
              Expanded(
                child: PageView(
                  controller: _pageController,
                    children: <Widget>[
                    for(var i=0;i<characters.length;i++)
                      CharacterWidget(character: characters[i], pageController: _pageController, currentPage: i),

                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}