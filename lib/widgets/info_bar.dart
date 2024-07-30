import 'package:flutter/material.dart';

Widget infoBar(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(50),
    color: const Color.fromARGB(120, 0, 0, 0),
    child: Column(
      children: [
        _nameBar(context),
        _lineBar(),
        const SizedBox(height: 10),
        _skillsBar(),
      ],
    ),
  );
}

Widget _nameBar(BuildContext context) {
    double unitHeightValue = MediaQuery.of(context).size.height * 0.01;

    final TextStyle nameText = TextStyle(
      color: Colors.white,
      height: 0.9,
      fontSize: 8 * unitHeightValue,
      fontWeight: FontWeight.bold,
      shadows: [
        Shadow(
            color: Colors.black,
            offset: Offset.fromDirection(270, 5),
            blurRadius: 10),
      ],
    );

    final TextStyle jobText = TextStyle(
      color: Colors.white,
      fontSize: 2 * unitHeightValue,
      fontWeight: FontWeight.bold,
      shadows: [
        Shadow(
            color: Colors.black,
            offset: Offset.fromDirection(270, 1),
            blurRadius: 2),
      ],
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text('CARL MASON', style: nameText),
        Expanded(child: Container()),
        Text('SOFTWARE DEVELOPER', style: jobText),
      ],
    );
  }

  Widget _lineBar() {
    return Opacity(
      opacity: 0.3,
      child: Container(
        height: 6,
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }

  Widget _skillsBar() {
    const skillsText = TextStyle(
      color: Colors.grey,
      fontSize: 14,
    );

    return SizedBox(
      height: 50,
      child: Row(
        children: [
          const Image(image: AssetImage('uk_flag.png'), height: 30),
          const SizedBox(width: 5),
          const Text('UK Based', style: skillsText),
          Expanded(child: Container()),
          const Image(image: AssetImage('ts.png'), height: 30, width: 30),
          const SizedBox(width: 5),
          const Text('TypeScript', style: skillsText),
          Expanded(child: Container()),
          const Image(image: AssetImage('js.png'), height: 30, width: 30),
          const SizedBox(width: 5),
          const Text('JavaScript', style: skillsText),
          Expanded(child: Container()),
          const Image(image: AssetImage('nodejs.png'), height: 30, width: 30),
          const SizedBox(width: 5),
          const Text('Node.JS', style: skillsText),
          Expanded(child: Container()),
          const Image(image: AssetImage('mongo.png'), height: 30, width: 30),
          const SizedBox(width: 5),
          const Text('MongoDB', style: skillsText),
          Expanded(child: Container()),
          const Image(
              image: AssetImage('sqlserver.png'), height: 30, width: 30),
          const SizedBox(width: 5),
          const Text('SQL Server', style: skillsText),
          Expanded(child: Container()),
          const Image(image: AssetImage('flutter.png'), height: 30, width: 30),
          const SizedBox(width: 5),
          const Text('Flutter', style: skillsText),
        ],
      ),
    );
  }

  