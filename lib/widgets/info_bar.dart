import 'package:flutter/material.dart';

Widget infoBar(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(50),
    color: const Color.fromARGB(180, 0, 0, 0),
    child: Column(
      children: [
        _nameBar(context),
        _lineBar(),
        const SizedBox(height: 10),
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



  