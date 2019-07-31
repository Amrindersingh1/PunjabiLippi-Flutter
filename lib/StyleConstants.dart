import 'package:flutter/material.dart';

class AppTheme {

  static const TextStyle display1 = TextStyle(
    fontFamily: 'WorkSans',
    color: Colors.black,
    fontSize: 38,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.2,
  );

  static const TextStyle display2 = TextStyle(
    fontFamily: 'WorkSans',
    color: Colors.black,
    fontSize: 32,
    fontWeight: FontWeight.normal,
    letterSpacing: 1.1,
  );

  static final TextStyle heading = TextStyle(
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.w900,
    fontSize: 34,
    color: Colors.white.withOpacity(0.8),
    letterSpacing: 1.2,
  );

  static final TextStyle subHeading = TextStyle(
    inherit: true,
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.w500,
    fontSize: 24,
    color: Colors.grey[200].withOpacity(0.8),
  );

  static final TextStyle punjabiCharacter = TextStyle(
    fontFamily: 'WebAkharThick',
    fontWeight: FontWeight.w600,
    shadows: <Shadow>[
      Shadow(
        offset: Offset(10.0, 10.0),
        blurRadius: 3.0,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
      Shadow(
        offset: Offset(10.0, 10.0),
        blurRadius: 8.0,
        color: Color.fromARGB(125, 0, 0, 255),
      ),
      Shadow(
        blurRadius: 3.0,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
      Shadow(
        blurRadius: 8.0,
        color: Color.fromARGB(125, 0, 0, 255),
      ),
    ],
  );

  static final TextStyle punjabiCharacterDetail = TextStyle(
      fontFamily: 'WebAkharThick',
      fontWeight: FontWeight.w600,
      fontSize: 400,
      color: Colors.white,
    shadows: <Shadow>[
      Shadow(
        offset: Offset(10.0, 10.0),
        blurRadius: 3.0,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
      Shadow(
        offset: Offset(10.0, 10.0),
        blurRadius: 8.0,
        color: Color.fromARGB(125, 0, 0, 255),
      ),
      Shadow(
        blurRadius: 3.0,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
      Shadow(
        blurRadius: 8.0,
        color: Color.fromARGB(125, 0, 0, 255),
      ),
    ],
  );
}
