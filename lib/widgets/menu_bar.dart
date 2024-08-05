import 'package:flutter/material.dart';
import 'dart:js' as js;

Widget topBar({
  required Function pageSelectAction,
}) {
  TextStyle headerText = TextStyle(
    color: Colors.grey.shade400,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  return Row(
    children: [
      Expanded(child: Container()),
      GestureDetector(
        onTap: () => pageSelectAction(0),
        child:  Text('ABOUT ME', style: headerText),
      ),     
      const SizedBox(width: 50),
      GestureDetector(
        onTap: () => pageSelectAction(1),
        child:  Text('SKILLS', style: headerText),
      ),   
      const SizedBox(width: 50),
      GestureDetector(
        onTap: () => pageSelectAction(2),
        child:  Text('PROJECTS', style: headerText),
      ),    
      const SizedBox(width: 50),
      GestureDetector(
        onTap: () {
          js.context.callMethod('open', ['https://github.com/c2digital']);
        },
        child:  Text('GITHUB', style: headerText),
      ),  
      const SizedBox(width: 50),
      GestureDetector(
        onTap: () => pageSelectAction(3),
        child:  Text('CONTACT', style: headerText),
      ),    
    ],
  );
}
