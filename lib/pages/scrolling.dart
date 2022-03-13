import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/animations/arrowontop.dart';
import 'package:portfolio/animations/entrancefader.dart';
import 'package:portfolio/pages/footer/footer.dart';
import 'package:portfolio/pages/project/projectpage.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:universal_html/html.dart' as html;
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
    } else if (i == 4) {
      return const Footer();
    } else {
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

  @override
  void dispose() {
    _scrollController.dispose();
    _scrollController.removeListener(() {});
    super.dispose();
  }

  void _scroll(int i) {
    _scrollController.animateTo(
      i == 0
          ? 0.0
          : i == 1
              ? MediaQuery.of(context).size.height * 1.05
              : i == 2
                  ? MediaQuery.of(context).size.height * 1.98
                  : i == 3
                      ? MediaQuery.of(context).size.height * 2.9
                      : MediaQuery.of(context).size.height * 4,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: MediaQuery.of(context).size.width < 760
            ? AppBar(
                iconTheme: const IconThemeData(
                  color: kBoldCaptionColor,
                ),
                elevation: 0,
                backgroundColor: Colors.blueGrey,
                actions: [
                  AutoSizeText(
                    "SK-Portfolio",
                    style: GoogleFonts.pacifico(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  )
                ],
              )
            : _appBarDesktop(),
      ),
      drawer: MediaQuery.of(context).size.width < 760 ? _appBarMobile() : null,
      body: Stack(
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

  Widget _appBarActions(String childText, int index, IconData icon) {
    return MediaQuery.of(context).size.width > 760
        ? EntranceFader(
            offset: const Offset(0, -10),
            delay: const Duration(milliseconds: 100),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              height: 60,
              child: MaterialButton(
                hoverColor: kButtonColor,
                onPressed: () => _scroll(index),
                child: Text(
                  childText,
                  style: const TextStyle(
                      color: kBoldCaptionColor, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              hoverColor: kButtonColor.withAlpha(70),
              onPressed: () {
                _scroll(index);
                Navigator.pop(context);
              },
              child: ListTile(
                leading: Icon(
                  icon,
                  color: kButtonColor,
                ),
                title: Text(
                  childText,
                  style: const TextStyle(
                    color: kBoldCaptionColor,
                  ),
                ),
              ),
            ));
  }

  Widget _appBarDesktop() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: kGreyBackground,
      title: MediaQuery.of(context).size.width < 780
          ? EntranceFader(
              duration: const Duration(milliseconds: 250),
              offset: const Offset(0, -10),
              delay: const Duration(seconds: 3),
              child: AutoSizeText(
                "SK-Portfolio",
                style: GoogleFonts.pacifico(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
            )
          : EntranceFader(
              offset: const Offset(0, -10),
              duration: const Duration(milliseconds: 250),
              delay: const Duration(milliseconds: 100),
              child: AutoSizeText(
                "SK-Portfolio",
                style: GoogleFonts.pacifico(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * 0.035,
                ),
              ),
            ),
      actions: [
        for (int i = 0; i < _sectionsName.length; i++)
          _appBarActions(_sectionsName[i], i, _sectionsIcons[i]),
        EntranceFader(
            offset: const Offset(0, -10),
            delay: const Duration(milliseconds: 100),
            duration: const Duration(milliseconds: 250),
            child: Container(
                height: 60,
                width: 120,
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  hoverColor: kButtonColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: kButtonColor.withAlpha(150))),
                  onPressed: () {
                    html.window.open(
                        "https://drive.google.com/file/d/1ErA9nKDOSu1FcjxvYgI9CzksdX1NqZGC/view?usp=sharing",
                        "pdf");
                  },
                  child: Text(
                    "RESUME",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ))),
      ],
    );
  }

  Widget _appBarMobile() {
    return Drawer(
      child: Material(
        color: kGreyBackground,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: AutoSizeText(
                  "SK-Portfolio",
                  style: GoogleFonts.pacifico(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
              ),
              const Divider(color: kButtonColor),
              for (int i = 0; i < _sectionsName.length; i++)
                _appBarActions(_sectionsName[i], i, _sectionsIcons[i]),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    hoverColor: kButtonColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        side: const BorderSide(color: kButtonColor)),
                    onPressed: () {
                      launchURL(
                          "https://drive.google.com/file/d/1ErA9nKDOSu1FcjxvYgI9CzksdX1NqZGC/view?usp=sharing");
                    },
                    child: ListTile(
                      leading: const Icon(
                        Icons.book,
                        color: kButtonColor,
                      ),
                      title: Text(
                        "RESUME",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w300,
                          color: kBoldCaptionColor,
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class SectionsBody extends StatelessWidget {
  final ScrollController scrollController;
  final int sectionsLength;
  final Widget Function(int) sectionWidget;

  const SectionsBody({
    Key? key,
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
        controller: scrollController,
        itemCount: sectionsLength,
        itemBuilder: (context, index) => sectionWidget(index),
      ),
    );
  }
}
