import 'package:flutter/material.dart';

class Character {
  final String word;
  final String name;
  final String description;
  final String audio;

  Character({this.audio, this.word, this.name,  this.description});
}

List characters =   [

  Character(

      word: "ੳ",

      name: "\u0a13\u0a42\u0a5c\u0a3e (Oo'rhaa)",

      description: "o' as in room",

      audio: "oorhaa.mp3"

  ),

  Character(

      word: "\u0a05",

      name: "\u0a10\u0a5c\u0a3e (Ai'rhaa)",

      description: "a' as in hat",

      audio: "airhaa.mp3"

  ),

  Character(

      word: "\u0a72",

      name: "\u0a08\u0a5c\u0a40 (Ee'rhee)",

      description: "e' as in energy"

  ),

  Character(

      word: "\u0a38",

      name: "\u0a38\u0a71\u0a38\u0a3e (sas'saa)",

      description: "s' as in same"

  ),

  Character(

      word: "\u0a39",

      name: "\u0a39\u0a3e\u0a39\u0a3e (haa'haa)",

      description: "h' as in  home"

  ),

  Character(

      word: "\u0a15",

      name: "\u0a15\u0a71\u0a15\u0a3e (Kak'kaa)",

      description: "k' as in Kate, kite"

  ),

  Character(

      word: "\u0a16",

      name: "\u0a16\u0a71\u0a16\u0a3e (khakh'khaa)",

      description: "'kh' as in khan, khaki"

  ),

  Character(

      word: "\u0a17",

      name: "\u0a17\u0a71\u0a17\u0a3e (gag'gaa)",

      description: "g' as in God"

  ),

  Character(

      word: "\u0a18",

      name: "\u0a18\u0a71\u0a18\u0a3e (ghag'ghaa)",

      description: "'gh' as in aghast, ghost"

  ),

  Character(

      word: "\u0a19",

      name: "\u0a19\u0a70\u0a19\u0a3e (Ngan'ngaa)",

      description: "'ng' as in England"

  ),

  Character(

      word: "\u0a1a",

      name: "\u0a1a\u0a71\u0a1a\u0a3e (chach'chaa)",

      description: "ch' as in change"

  ),

  Character(

      word: "\u0a1b",

      name: "\u0a1b\u0a71\u0a1b\u0a3e (chhachh'chhaa)",

      description: "ch' as in cheddar more like ch/sh robustly aspirated"

  ),

  Character(

      word: "\u0a1c",

      name: "\u0a1c\u0a71\u0a1c\u0a3e (jaj'jaa)",

      description: "j' as in Japan"

  ),

  Character(

      word: "\u0a1d",

      name: "\u0a1d\u0a71\u0a1d\u0a3e (jhaj'jhaa)",

      description: "pronounced as harder stressed 'j' as in jolt more robustly aspirated"

  ),

  Character(

      word: "\u0a1e",

      name: "\u0a1e\u0a70\u0a1e\u0a3e (Njan'njaa)",

      description: "There is no English equivalent of this sound"

  ),

  Character(

      word: "\u0a1f",

      name: "\u0a1f\u0a48\u0a02\u0a15\u0a3e (tain'kaa)",

      description: "t' as in Tom"

  ),

  Character(

      word: "\u0a20",

      name: "\u0a20\u0a71\u0a20\u0a3e (thath'thaa)",

      description: "'th' harder  th as in river Thames"

  ),

  Character(

      word: "\u0a21",

      name: "\u0a21\u0a71\u0a21\u0a3e (ddad'daa)",

      description: "d' as in daddy"

  ),

  Character(

      word: "\u0a22",

      name: "\u0a22\u0a71\u0a22\u0a3e (dhad'daa)",

      description: "dd' as in daddy"

  ),

  Character(

      word: "\u0a23",

      name: "\u0a23\u0a3e\u0a23\u0a3e (nhaa'nhaa)",

      description: "Pronounced  like English 'n' with tip of tongue upwards touching palette of mouth"

  ),

  Character(

      word: "\u0a24",

      name: "\u0a24\u0a71\u0a24\u0a3e (tat'taa)",

      description: "t' softer unaspirated t as inTim"

  ),

  Character(

      word: "\u0a25",

      name: "\u0a25\u0a71\u0a25\u0a3e (thath'thaa)",

      description: "'th' as in Thailand"

  ),

  Character(

      word: "\u0a26",

      name: "\u0a26\u0a71\u0a26\u0a3e (dad'daa)",

      description: "th' softer th as in  'then'"

  ),

  Character(

      word: "\u0a27",

      name: "\u0a27\u0a71\u0a27\u0a3e (dhad'daa)",

      description: "'th' stressed th seventh"

  ),

  Character(

      word: "\u0a28",

      name: "\u0a28\u0a71\u0a28\u0a3e (nan'naa)",

      description: "n' as in name"

  ),

  Character(

      word: "\u0a2a",

      name: "\u0a2a\u0a71\u0a2a\u0a3e (pap'paa)",

      description: "p' as in papa"

  ),

  Character(

      word: "\u0a2b",

      name: "\u0a2b\u0a71\u0a2b\u0a3e (phaph'phaa)",

      description: "'ph' as in philosopher"

  ),

  Character(

      word: "\u0a2c",

      name: "\u0a2c\u0a71\u0a2c\u0a3e (bab'baa)",

      description: "b' as in baby"

  ),

  Character(

      word: "\u0a2d",

      name: "\u0a2d\u0a71\u0a2d\u0a3e (bhab'baa)",

      description: "there is no English equivalent of this sound more like bha combined together"

  ),

  Character(

      word: "\u0a2e",

      name: "\u0a2e\u0a71\u0a2e\u0a3e (mam'maa)",

      description: "m' as in mother"

  ),

  Character(

      word: "\u0a2f",

      name: "\u0a2f\u0a71\u0a2f\u0a3e (yay'yaa)",

      description: "y' as in yellow"

  ),

  Character(

      word: "\u0a30",

      name: "\u0a30\u0a3e\u0a30\u0a3e (ra'raa)",

      description: "r' as in run"

  ),

  Character(

      word: "\u0a32",

      name: "\u0a32\u0a71\u0a32\u0a3e (lal'laa)",

      description: "l' as in lake"

  ),

  Character(

      word: "\u0a35",

      name: "\u0a35\u0a71\u0a35\u0a3e (vav'vaa)",

      description: "v' as in Victor"

  ),

  Character(

      word: "\u0a5c",

      name: "\u0a5c\u0a3e\u0a5c\u0a3e (rhar'rhaa)",

      description: "'rr' hard double r"

  ),

  Character(

      word: "\u0a36",

      name: "\u0a36\u0a71\u0a36\u0a3e (shash'shaa)",

      description: "sh'  as in shade"

  ),

  Character(

      word: "\u0a16\u0a3c",

      name: "\u0a16\u0a3c\u0a71\u0a16\u0a3c\u0a3e (kha'khaa)",

      description: "'kh' as in khan or as 'ch' As in the Scottish Loch"

  ),

  Character(

      word: "\u0a17\u0a3c",

      name: "\u0a17\u0a3c\u0a71\u0a17\u0a3c\u0a3e (gag'gaa)",

      description: "g' as in good"

  ),

  Character(

      word: "\u0a5b",

      name: "\u0a5b\u0a71\u0a5b\u0a3e (Zaz'zaa)",

      description: "z' as in zebra"

  ),

  Character(

      word: "\u0a2b\u0a3c",

      name: "\u0a2b\u0a3c\u0a71\u0a2b\u0a3c\u0a3e (faf'faa)",

      description: "'ph' as in philosopher"

  ),

  Character(

      word: "\u0a32\u0a3c",

      name: "\u0a32\u0a3c\u0a71\u0a32\u0a3c\u0a3e (lal'laa)",

      description: "l' as in land"

  )

];