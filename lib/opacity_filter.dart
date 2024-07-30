import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class OpacityFilter extends StatelessWidget {
  const OpacityFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.9,
      child: Shimmer.fromColors(
        period: const Duration(milliseconds: 12000),
        direction: ShimmerDirection.rtl,
        baseColor: const Color.fromARGB(200, 0, 0, 0),
        highlightColor: Colors.transparent,
        enabled: true,
        child: Container(
          color: Colors.black,
        ),
      ),
    );
  }
}
