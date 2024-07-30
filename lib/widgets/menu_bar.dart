import 'package:flutter/material.dart';

Widget topBar() {
  TextStyle headerText = TextStyle(
    color: Colors.grey.shade400,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  return Row(
    children: [
      Expanded(child: Container()),
      Text('ABOUT ME', style: headerText),
      const SizedBox(width: 50),
      Text('SKILLS', style: headerText),
      const SizedBox(width: 50),
      Text('GITHUB', style: headerText),
      const SizedBox(width: 50),
      Text('CONTACT', style: headerText),
    ],
  );
}
