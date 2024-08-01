import 'package:flutter/material.dart';
import 'package:personal_site/background_image.dart';
import 'package:personal_site/opacity_filter.dart';
import 'package:personal_site/splitting_body.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
            child: Stack(children: [
          BackgroundImage(),
          OpacityFilter(),
          SplittingBody(),
        ])),
      ),
    );
  }
}
