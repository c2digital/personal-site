import 'package:flutter/material.dart';

class OpacityFilter extends StatelessWidget {
  const OpacityFilter(
    {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.7,
      child: Container(
        color: Colors.black,
      ),
    );
  }
}
