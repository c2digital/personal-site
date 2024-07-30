

  import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget bottomBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.keyboard_arrow_down_rounded,
          color: Colors.white,
        ),
        Shimmer.fromColors(
          period: Duration(milliseconds: 1500),
          baseColor: Colors.grey.shade700,
          highlightColor: Colors.grey.shade100,
          enabled: true,
          child: const Text(
            'SCROLL',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const Icon(
          Icons.keyboard_arrow_down_rounded,
          color: Colors.white,
        ),
      ],
    );
  }