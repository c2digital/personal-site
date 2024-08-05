import 'package:flutter/material.dart';
import 'package:personal_site/widgets/about_me.dart';
import 'package:personal_site/widgets/contact.dart';
import 'package:personal_site/widgets/info_bar.dart';
import 'package:personal_site/widgets/menu_bar.dart';
import 'package:personal_site/widgets/projects.dart';
import 'package:personal_site/widgets/skills.dart';
import 'package:personal_site/widgets/skills_bar.dart';

class SplittingBody extends StatefulWidget {
  const SplittingBody({super.key});

  @override
  State<SplittingBody> createState() => _SplittingBodyState();
}

class _SplittingBodyState extends State<SplittingBody> {
  var showBody = false;

  PageController controller = PageController(
    initialPage: 0,
    keepPage: true,
    viewportFraction: 1,
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;

    return Stack(
      children: [
        mainBody(
          context,
          showBody,
          height,
        ),
        menuBar(
          onClick: () => setState(() {
            showBody = true;
          }),
        ),
      ],
    );
  }

  Widget menuBar({required Function onClick}) {
    return Column(
      children: [
        const SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
          child: topBar(pageSelectAction: (pageIndex) {
            setState(() {
              showBody = true;
              controller.animateToPage(
                pageIndex,
                duration: const Duration(seconds: 1),
                curve: Curves.easeIn,
              );
            });
          }),
        ),
        Expanded(child: Container())
      ],
    );
  }

  Widget mainBody(
    BuildContext context,
    bool showBody,
    double height,
  ) {
    const animationDuration = Duration(milliseconds: 800);
    const animationCurve = Curves.fastOutSlowIn;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedContainer(
          curve: animationCurve,
          height: (showBody) ? 0 : height - 311,
          duration: animationDuration,
          child: Container(),
        ),
        infoBar(context),
        Expanded(child: _content(height)),
        _skillsBar(),
        const SizedBox(height: 30),
      ],
    );
  }

  Widget _content(double height) {
    var pages = [
      aboutMe(),
      skills(),
      projects(),
      contact(),
    ];

    return AnimatedOpacity(
      opacity: (showBody) ? 1 : 0,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeIn,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: EdgeInsets.all(height * 0.05),
        decoration: const BoxDecoration(
          color: Color.fromARGB(100, 0, 0, 0),
          // boxShadow: [
          //   BoxShadow(
          //     color: Color.fromARGB(140, 0, 0, 0),
          //     offset: Offset.fromDirection(290, 6),
          //     blurRadius: 10,
          //   ),
          // ],
        ),
        child: PageView.builder(
          controller: controller,
          itemCount: 4,
          itemBuilder: (context, i) {
            return SingleChildScrollView(child: pages[i]);
          },
        ),
      ),
    );
  }

  Widget _skillsBar() {
    return Column(children: [
      Container(
          color: const Color.fromARGB(180, 0, 0, 0),
          padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
          child: skillsBar()),
    ]);
  }
}
