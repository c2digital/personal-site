import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'dart:math' as math;

import 'package:personal_site/styles/text.dart';

Widget contact() {
  return Container(
    padding: const EdgeInsets.all(50),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Contact', style: titleTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Wrap(
              children: [
                Text(
                  'Hi - I\'m Carl, a UK-based software developer.',
                  style: bodyTextStyle,
                ),
                SizedBox(height: 50),
                Text(
                  loremIpsum(words: 30),
                  style: bodyTextStyle,
                ),
                SizedBox(height: 50),
                Text(
                  loremIpsum(words: 10),
                  style: bodyTextStyle,
                ),
                SizedBox(height: 60),
                Text(
                  loremIpsum(words: 30),
                  style: bodyTextStyle,
                )
              ],
            )),
          ],
        )
      ],
    ),
  );
}
