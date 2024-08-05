import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

import 'package:personal_site/styles/text.dart';

Widget aboutMe() {
  return Container(
    padding: const EdgeInsets.all(50),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('About Me', style: titleTextStyle),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Wrap(
              children: [
                Text(
                  'Hi - I\'m Carl, a UK-based software developer.',
                  style: bodyTextStyle,
                ),
                const SizedBox(height: 50),
                Text(
                  loremIpsum(words: 30),
                  style: bodyTextStyle,
                ),
                const SizedBox(height: 50),
                Text(
                  loremIpsum(words: 10),
                  style: bodyTextStyle,
                ),
                const SizedBox(height: 60),
                Text(
                  loremIpsum(words: 30),
                  style: bodyTextStyle,
                )
              ],
            )),
            const SizedBox(width: 50),
            const Image(
              image: AssetImage('bg.png'),
              width: 500,
            )
          ],
        )
      ],
    ),
  );
}
