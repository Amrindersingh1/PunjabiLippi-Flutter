import 'package:flutter/material.dart';

class Character {
  final String word;
  final String name;
  final String description;
  final List<Color> colors;
  final Color textColor;

  Character({this.word, this.name, this.textColor, this.description, this.colors});
}

List characters = [
  Character(
      word: "ੳ".toString(),
      name: "Oo'rhaa (ਓੂੜਾ)",
      description: "o' as in room",
      colors: [Color(0xFF38f9d7), Color(0xFF43e97b)],
      textColor: Colors.white
  ),
  Character(
      word: "ਅ",
      name: "Ai'rhaa (ਐੜਾ)",
      description: "a' as in hat",
      colors: [Color(0xFFf093fb), Color(0xFFf5576c)],
      textColor: Colors.white
  ),
  Character(
      word: "ੲ",
      name: "Ee'rhee (ਈੜੀ)",
      description: "e' as in energy",
      colors: [Color(0xFF2af598), Color(0xFF009efd)],
      textColor: Colors.white
  ),
  Character(
      word: "ਸ",
      name: "sas'saa (ਸੱਸਾ)",
      description: "s' as in same",
      colors: [Color(0xFFff0844), Color(0xFFffb199)],
      textColor: Colors.white
  ),
  Character(
      word: "ਹ",
      name: "haa'haa (ਹਾਹਾ)",
      description: "h' as in home",
      colors: [Color(0xFF50cc7f), Color(0xFFf5d100)],
      textColor: Colors.white
  ),
];