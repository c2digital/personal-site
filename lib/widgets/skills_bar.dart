  import 'package:flutter/material.dart';
  
  Widget skillsBar() {
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