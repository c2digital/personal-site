import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:flutter_sticky_widgets/flutter_sticky_widgets.dart';
import 'package:personal_site/widgets/about_me.dart';
import 'package:personal_site/widgets/bottom_bar.dart';
import 'package:personal_site/widgets/contact.dart';
import 'package:personal_site/widgets/info_bar.dart';
import 'package:personal_site/widgets/menu_bar.dart';
import 'package:personal_site/widgets/skills.dart';
import 'package:shimmer/shimmer.dart';

class ScrollingBody extends StatefulWidget {
  const ScrollingBody({super.key});

  @override
  State<ScrollingBody> createState() => _ScrollingBodyState();
}

class _ScrollingBodyState extends State<ScrollingBody> {
  late ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;

    return Stack(
      children: [
        StickyContainer(
          displayOverFlowContent: true,
          stickyChildren: [
            StickyWidget(
              initialPosition: StickyPosition(
                bottom: 10,
                left: 0,
              ),
              finalPosition: StickyPosition(
                bottom: MediaQuery.of(context).size.height - 281,
                left: 20,
              ),
              controller: _controller,
              child: SizedBox(
                height: 281,
                width: size.width,
                child: IgnorePointer(
                  child: infoBar(context),
                ),
              ),
            ),
          ],
          child: ShaderMask(
            shaderCallback: (rect) {
              return const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black,
                  Colors.black,
                  Colors.black,
                  Colors.black,
                  Colors.black,
                  Colors.black,
                  Colors.black
                ],
              ).createShader(Rect.fromLTRB(0, 290, rect.width, rect.height));
            },
            blendMode: BlendMode.dstIn,
            child: SingleChildScrollView(
              controller: _controller,
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Container(height: height - 0),
                  const SizedBox(height: 10),
                  aboutMe(),
                  skills(),
                  contact(),
                ],
              ),
            ),
          ),
        ),
        IgnorePointer(
          child: Container(
            height: 125,
            padding: const EdgeInsets.all(50),
            // color: const Color.fromARGB(120, 0, 0, 0),
            child: Column(
              children: [
                topBar(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
