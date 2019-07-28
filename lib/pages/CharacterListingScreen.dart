import 'package:flutter/material.dart';
import 'package:punjabilipi/StyleConstants.dart';

class CharacterListingScreen extends StatefulWidget {
  @override
  _CharacterListingScreenState createState() => _CharacterListingScreenState();

}

class _CharacterListingScreenState extends State<CharacterListingScreen> {
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
      body: Column(
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
            child: CharacterWidget(),
          )
        ],
      ),
    );
  }
}