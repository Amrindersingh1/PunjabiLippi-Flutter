import 'package:flutter/material.dart';
import 'dart:math';

class Gradients {

    static List<Color> getGradient() {
      var rng = new Random();
      return colorGradients[rng.nextInt(colorGradients.length-1)];
    }

    static var colorGradients = [

      [Color(0xFFf6d365), Color(0xFFfda085)],

      [Color(0xFFd4fc79), Color(0xFF96e6a1)],

      [Color(0xFF84fab0), Color(0xFF8fd3f4)],

      [Color(0xFFa6c0fe), Color(0xFFf68084)],

      [Color(0xFFfccb90), Color(0xFFd57eeb)],

      [Color(0xFFe0c3fc), Color(0xFF8ec5fc)],

      [Color(0xFFf093fb), Color(0xFFf5576c)],

      [Color(0xFF4facfe), Color(0xFF00f2fe)],

      [Color(0xFF43e97b), Color(0xFF38f9d7)],

      [Color(0xFFfa709a), Color(0xFFfee140)],

      [Color(0xFF30cfd0), Color(0xFF330867)],

      [Color(0xFF89f7fe), Color(0xFF66a6ff)],

      [Color(0xFF2af598), Color(0xFF009efd)],

      [Color(0xFF6a11cb), Color(0xFF2575fc)],

      [Color(0xFF37ecba), Color(0xFF72afd3)],

      [Color(0xFFc471f5), Color(0xFFfa71cd)],

      [Color(0xFF48c6ef), Color(0xFF6f86d6)],

      [Color(0xFF0ba360), Color(0xFF3cba92)],

      [Color(0xFF00c6fb), Color(0xFF005bea)],

      [Color(0xFFa3bded), Color(0xFF6991c7)],

      [Color(0xFF9795f0), Color(0xFFfbc8d4)],

      [Color(0xFFf43b47), Color(0xFF453a94)],

      [Color(0xFF0250c5), Color(0xFFd43f8d)],

      [Color(0xFF88d3ce), Color(0xFF6e45e2)],

      [Color(0xFF7028e4), Color(0xFFe5b2ca)],

      [Color(0xFF13547a), Color(0xFF80d0c7)],

      [Color(0xFFff0844), Color(0xFFffb199)],

      [Color(0xFF92fe9d), Color(0xFF00c9ff)],

      [Color(0xFFff758c), Color(0xFFff7eb3)],

      [Color(0xFFc79081), Color(0xFFdfa579)],

      [Color(0xFF8baaaa), Color(0xFFae8b9c)],

      [Color(0xFFf83600), Color(0xFFf9d423)],

      [Color(0xFFb721ff), Color(0xFF21d4fd)],

      [Color(0xFF6e45e2), Color(0xFF88d3ce)],

      [Color(0xFFd558c8), Color(0xFF24d292)],

      [Color(0xFF5f72bd), Color(0xFF9b23ea)],

      [Color(0xFFc71d6f), Color(0xFFd09693)],

      [Color(0xFF96deda), Color(0xFF50c9c3)],

      [Color(0xFFf77062), Color(0xFFfe5196)],

      [Color(0xFFa8caba), Color(0xFF5d4157)],

      [Color(0xFF16a085), Color(0xFFf4d03f)],

      [Color(0xFFff5858), Color(0xFFf09819)],

      [Color(0xFF00cdac), Color(0xFF8ddad5)],

      [Color(0xFF4481eb), Color(0xFF04befe)],

      [Color(0xFF874da2), Color(0xFFc43a30)],

      [Color(0xFF4481eb), Color(0xFF04befe)],

      [Color(0xFFe8198b), Color(0xFFc7eafd)],

      [Color(0xFF64b3f4), Color(0xFFc2e59c)],

      [Color(0xFF0fd850), Color(0xFFf9f047)],

      [Color(0xFFee9ca7), Color(0xFFffdde1)],

      [Color(0xFF209cff), Color(0xFF68e0cf)],

      [Color(0xFFe6b980), Color(0xFFeacda3)],

      [Color(0xFF1e3c72), Color(0xFF2a5298)],

      [Color(0xFF9be15d), Color(0xFF00e3ae)],

      [Color(0xFFed6ea0), Color(0xFFec8c69)],

      [Color(0xFFffc3a0), Color(0xFFffafbd)],

      [Color(0xFFcc208e), Color(0xFF6713d2)],

      [Color(0xFFb3ffab), Color(0xFF12fff7)],

      [Color(0xFFfc6076), Color(0xFFff9a44)],

      [Color(0xFF00dbde), Color(0xFFfc00ff)],

      [Color(0xFFf9d423), Color(0xFFff4e50)],

      [Color(0xFF50cc7f), Color(0xFFf5d100)],

      [Color(0xFF0acffe), Color(0xFF495aff)],

      [Color(0xFFdf89b5), Color(0xFFbfd9fe)],

      [Color(0xFFed6ea0), Color(0xFFec8c69)],

      [Color(0xFFe14fad), Color(0xFFf9d423)],

      [Color(0xFFb224ef), Color(0xFF7579ff)],

      [Color(0xFFc1c161), Color(0xFFd4d4b1)],

      [Color(0xFFec77ab), Color(0xFF7873f5)],

      [Color(0xFF007adf), Color(0xFF00ecbc)],

      [Color(0xFF20E2D7), Color(0xFFF9FEA5)],

      [Color(0xFFA8BFFF), Color(0xFF884D80)],

      [Color(0xFFB6CEE8), Color(0xFFF578DC)],

      [Color(0xFFCBBACC), Color(0xFF2580B3)],

      [Color(0xFF007adf), Color(0xFF00ecbc)]

    ];
 }