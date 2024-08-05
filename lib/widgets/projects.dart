import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

import 'package:personal_site/styles/text.dart';

Widget projects() {
  return Container(
    padding: const EdgeInsets.all(50),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Projects', style: titleTextStyle),
        Text(
          'Home Automation',
          style: headerTextStyle,
        ),
        Text(
          loremIpsum(words: 60),
          style: bodyTextStyle,
        ),
        const SizedBox(height: 50),
        Text(
          'Internet of Things (IoT)',
          style: headerTextStyle,
        ),
        Text(
          loremIpsum(words: 60),
          style: bodyTextStyle,
        ),
        const SizedBox(height: 50),
        Text(
          '3D Printing',
          style: headerTextStyle,
        ),
        Text(
          loremIpsum(words: 60),
          style: bodyTextStyle,
        ),
        const SizedBox(height: 50),
        Text(
          'Your next big thing?',
          style: headerTextStyle,
        ),
        Text(
          loremIpsum(words: 60),
          style: bodyTextStyle,
        ),
      ],
    ),
  );
}
