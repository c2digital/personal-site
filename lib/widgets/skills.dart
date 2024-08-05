import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

import 'package:personal_site/styles/text.dart';

Widget skills() {
  return Container(
    padding: const EdgeInsets.all(50),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Skills', style: titleTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Wrap(
                  alignment: WrapAlignment.start,
              children: [
                Text(
                  'This section will contain info about my skills and what I am learning... at some point...',
                  style: bodyTextStyle,
                ),
                const SizedBox(height: 50),
                Text(
                  'The following text is currently lorem ipsum because I dont know what to write yet',
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
          ],
        )
      ],
    ),
  );
}
