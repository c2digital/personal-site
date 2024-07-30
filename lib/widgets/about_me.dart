import 'package:flutter/material.dart';

Widget aboutMe() {
  return Container(
    child: Column(
      children: [
        Text('About Me'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Wrap(
              children: [Text('Some text here')],
            ),
            Image(
              image: AssetImage('bg.png'),
              width: 500,
              height: 800,
            )
          ],
        )
      ],
    ),
  );
}
