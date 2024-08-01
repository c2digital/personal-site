import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

import 'package:personal_site/styles/text.dart';

Widget skills() {
  return Container(
    padding: const EdgeInsets.all(50),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text('Skills', style: titleTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Wrap(
                  alignment: WrapAlignment.end,
              children: [
                Text(
                  'Hi - I\'m Carl, a UK-based software developer.',
                  style: bodyTextStyle,
                  textAlign: TextAlign.end,
                ),
                const SizedBox(height: 50),
                Text(
                  loremIpsum(words: 30),
                  style: bodyTextStyle,
                  textAlign: TextAlign.end,
                ),
                const SizedBox(height: 50),
                Text(
                  loremIpsum(words: 10),
                  style: bodyTextStyle,
                  textAlign: TextAlign.end,
                ),
                const SizedBox(height: 60),
                Text(
                  loremIpsum(words: 30),
                  style: bodyTextStyle,
                  textAlign: TextAlign.end,
                )
              ],
            )),
          ],
        )
      ],
    ),
  );
}
