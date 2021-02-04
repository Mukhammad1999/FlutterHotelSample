import 'package:flutter/material.dart';
import 'package:css_colors/css_colors.dart';

import 'homescreen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.blue[600],
      accentColor: Colors.blueAccent[100],
    ),
    title: 'Travel App',
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),

  ));
}

