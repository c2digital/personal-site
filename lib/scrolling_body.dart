import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ScrollingBody extends StatelessWidget {
  const ScrollingBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;

    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(50),
            color: const Color.fromARGB(120, 0, 0, 0),
            child: Column(
              children: [
                _topBar(),
              ],
            ),
          ),
          Container(height: height - 500),
          Container(
            padding: const EdgeInsets.all(50),
            color: const Color.fromARGB(120, 0, 0, 0),
            child: Column(
              children: [
                _nameBar(context),
                const SizedBox(height: 10),
                _lineBar(),
                const SizedBox(height: 10),
                _skillsBar(),
              ],
            ),
          ),
          const SizedBox(height: 10),
          _bottomBar(),
        ],
      ),
    );
  }

  Widget _topBar() {
    const TextStyle headerText = TextStyle(
      color: Colors.grey,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );

    return Row(
      children: [
        Expanded(child: Container()),
        const Text('ABOUT ME', style: headerText),
        const SizedBox(width: 50),
        const Text('SKILLS', style: headerText),
        const SizedBox(width: 50),
        const Text('GITHUB', style: headerText),
        const SizedBox(width: 50),
        const Text('CONTACT', style: headerText),
      ],
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
            offset: Offset.fromDirection(270, 5),
            blurRadius: 10),
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

  Widget _skillsBar() {
    const skillsText = TextStyle(
      color: Colors.grey,
      fontSize: 14,
    );

    return SizedBox(
      height: 50,
      child: Row(
        children: [
          const Image(image: AssetImage('ts.png'), height: 30, width: 30),
          const Text('TypeScript', style: skillsText),
          Expanded(child: Container()),
          const Image(image: AssetImage('js.png'), height: 30, width: 30),
          const Text('JavaScript', style: skillsText),
          Expanded(child: Container()),
          const Image(image: AssetImage('nodejs.png'), height: 30, width: 30),
          const Text('Node.JS', style: skillsText),
          Expanded(child: Container()),
          const Image(image: AssetImage('mongo.png'), height: 30, width: 30),
          const Text('MongoDB', style: skillsText),
          Expanded(child: Container()),
          const Image(
              image: AssetImage('sqlserver.png'), height: 30, width: 30),
          const Text('SQL Server', style: skillsText),
          Expanded(child: Container()),
          const Image(image: AssetImage('flutter.png'), height: 30, width: 30),
          const Text('Flutter', style: skillsText),
        ],
      ),
    );
  }

  Widget _bottomBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.keyboard_arrow_down_rounded,
          color: Colors.white,
        ),
        Shimmer.fromColors(
          period: Duration(milliseconds: 500),
          baseColor: Colors.grey.shade700,
          highlightColor: Colors.grey.shade100,
          enabled: true,
          child: const Text(
            'Scroll down to find out about me',
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
}
