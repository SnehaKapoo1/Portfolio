import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/animations/arrowontop.dart';
import 'package:portfolio/animations/entrancefader.dart';
import 'package:portfolio/pages/project/projectpage.dart';

import 'about/about.dart';
import 'contacts/contact.dart';
import 'home/home.dart';

class ScrollSection extends StatefulWidget {
  const ScrollSection({Key? key}) : super(key: key);

  @override
  State<ScrollSection> createState() => _ScrollSectionState();
}

class _ScrollSectionState extends State<ScrollSection> {

  bool isPressed = false;
  bool _isScrollingDown = false;
  final ScrollController _scrollController = ScrollController();

  final List<String> _sectionsName = [
    "HOME",
    "ABOUT",
    "PROJECT",
    "CONTACT",
  ];

  Widget sectionWidget(int i) {
    if (i == 0) {
      return const HomePage();
    } else if (i == 1) {
      return const AboutPage();
    } else if (i == 2) {
      return const ProjectPage();
    } else if (i == 3) {
      return const ContactPage();
    }
    else {
      return Container();
    }
  }

  final List<IconData> _sectionsIcons = [
    Icons.home,
    Icons.person,
    Icons.build,
    Icons.article,
    Icons.phone,
  ];

  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!_isScrollingDown) {
          _isScrollingDown = true;
          setState(() {});
        }
      }

      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (_isScrollingDown) {
          _isScrollingDown = false;
          setState(() {});
        }
      }
    });
    super.initState();
  }

  void _scroll(int i) {
    _scrollController.animateTo(
      i == 0
          ? 0.0
          : i == 1
          ? MediaQuery.of(context).size.height * 1.05
          : i == 2
          ? MediaQuery.of(context).size.height * 1.98
          :  i == 3
          ? MediaQuery.of(context).size.height * 2.9
          : MediaQuery.of(context).size.height * 4,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _scrollController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body:  Stack(
        children: [
          SectionsBody(
            scrollController: _scrollController,
            sectionsLength: _sectionsIcons.length,
            sectionWidget: sectionWidget,
          ),
          _isScrollingDown
              ? Positioned(
              bottom: 90,
              right: 0,
              child: EntranceFader(
                  offset: const Offset(0, 20),
                  child: ArrowOnTop(
                    onPressed: () => _scroll(0),
                  )))
              : Container()
        ],
      ),
    );
  }

  Widget _appBarDesktop(){
    return AppBar(
      backgroundColor: Colors.blueGrey,
    );
  }
}

class SectionsBody extends StatelessWidget {
  final ScrollController scrollController;
  final int sectionsLength;
  final Widget Function(int) sectionWidget;

  const SectionsBody({
   Key ?key,
    required this.scrollController,
    required this.sectionsLength,
    required this.sectionWidget,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        // physics: !kIsWeb ? ScrollPhysics() : NeverScrollableScrollPhysics(),
        controller: scrollController,
        itemCount: sectionsLength,
        itemBuilder: (context, index) => sectionWidget(index),
      ),
    );
  }
}
