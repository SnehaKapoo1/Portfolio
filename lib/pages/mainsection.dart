import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/animations/arrowontop.dart';
import 'package:portfolio/animations/entrancefader.dart';
import 'package:portfolio/pages/project/projectpage.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widget/navbarlogo.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'about/about.dart';
import 'contacts/contact.dart';
import 'home/home.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isPressed = false;
  bool _isScrollingDown = false;
  final ScrollController _scrollController = ScrollController();

  final List<String> _sectionsName = [
    "HOME",
    "ABOUT",
    "PROJECT",
    "CONTACT",
  ];

  final List<IconData> _sectionsIcons = [
    Icons.home,
    Icons.person,
    Icons.settings,
    Icons.build,
    Icons.article,
    Icons.phone,
  ];

  void _scroll(int i) {
    _scrollController.animateTo(
      i == 0
          ? 0.0
          : i == 1
              ? MediaQuery.of(context).size.height * 1.05
              : i == 2
                  ? MediaQuery.of(context).size.height * 2.50
                  : i == 3
                      ? MediaQuery.of(context).size.height * 2.9
                      : MediaQuery.of(context).size.height * 4,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  Widget sectionWidget(int i) {
    if (i == 0) {
      return const HomePage();
    } else if (i == 1) {
      return const AboutPage();
    } else if (i == 2) {
      return const ProjectPage();
    } else if (i == 3) {
      return const ContactPage();
    } else {
      return Container();
    }
  }

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

  @override
  Widget build(BuildContext context) {
    //bool height = MediaQuery.of(context).size.width < 760;
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size(screenSize.width, screenSize.height),
          child: screenSize.width < 760
              ? AppBar(
                  iconTheme: const IconThemeData(color: Colors.black),
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  actions: [
                    NavBarLogo(),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    )
                  ],
                )
              : _appBarTabDesktop()),

      drawer: screenSize.width < 760 ? _appBarMobile() : null,
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
      //   : _appBarTabDesktop(),
    );
  }

  Widget _appBarActions(String childText, int index, IconData icon) {
    return MediaQuery.of(context).size.width > 760
        ? EntranceFader(
            offset: const Offset(0, -10),
            delay: const Duration(milliseconds: 100),
            duration: const Duration(milliseconds: 250),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              height: 60.0,
              child: MaterialButton(
                hoverColor: kButtonColor,
                onPressed: () => _scroll(index),
                child: Text(
                  childText,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
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
                title: Text(childText,
                    style: const TextStyle(color: Colors.black)),
              ),
            ),
          );
  }

  Widget _appBarTabDesktop() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.blueGrey,
      title: MediaQuery.of(context).size.width < 780
          ? EntranceFader(
              duration: const Duration(milliseconds: 250),
              offset: const Offset(0, -10),
              delay: const Duration(seconds: 3),
              child: NavBarLogo(
                height: 20.0,
              ),
            )
          : EntranceFader(
              offset: const Offset(0, -10),
              duration: const Duration(milliseconds: 250),
              delay: const Duration(milliseconds: 100),
              child: NavBarLogo(
                height: MediaQuery.of(context).size.height * 0.035,
              ),
            ),
      actions: [
        for (int i = 0; i < _sectionsName.length; i++)
          _appBarActions(
            _sectionsName[i],
            i,
            _sectionsIcons[i],
          ),
        EntranceFader(
          offset: const Offset(0, -10),
          delay: const Duration(milliseconds: 100),
          duration: const Duration(milliseconds: 250),
          child: Container(
            height: 60.0,
            width: 120.0,
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              hoverColor: kButtonColor.withAlpha(150),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: const BorderSide(color: kButtonColor)),
              onPressed: () {
                html.window.open(
                    'https://drive.google.com/file/d/1GF-wtbu2ob_Uxhw2In2QA8QiYi3XjCj1/view?usp=sharing',
                    "pdf");
              },
              child: Text(
                "RESUME",
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 15.0),
        // SizedBox(
        //   height: 30.0,
        //   child: Switch(
        //     inactiveTrackColor: Colors.grey,
        //     value: !_themeProv.lightTheme,
        //     onChanged: (value) {
        //       _themeProv.lightTheme = !value;
        //     },
        //     activeColor: kButtonColor,
        //   ),
        // ),
        //const SizedBox(width: 15.0),
      ],
    );
  }

  Widget _appBarMobile() {
    return Drawer(
      child: Material(
        color: kButtonColor,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: NavBarLogo(
                  height: 28,
                ),
              ),
              const Divider(
                color: Colors.blueGrey,
              ),
              const ListTile(
                leading: Icon(
                  Icons.light_mode,
                  color: kButtonColor,
                ),
                /* title: Text("Dark Mode",
                    style: TextStyle(
                        color: theme.lightTheme ? Colors.black : Colors.white)),
                trailing: Switch(
                  inactiveTrackColor: Colors.grey,
                  value: !theme.lightTheme,
                  onChanged: (value) {
                    theme.lightTheme = !value;
                  },
                  activeColor: kButtonColor,
                ),*/
              ),
              /*Divider(
                color: theme.lightTheme ? Colors.grey[200] : Colors.white,
              ),*/
              for (int i = 0; i < _sectionsName.length; i++)
                _appBarActions(_sectionsName[i], i, _sectionsIcons[i]),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  hoverColor: kButtonColor.withAlpha(150),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: const BorderSide(color: kButtonColor)),
                  onPressed: () {
                    // launchURL(
                    //     "https://drive.google.com/file/d/1GF-wtbu2ob_Uxhw2In2QA8QiYi3XjCj1/view?usp=sharing");
                  },
                  child: ListTile(
                    leading: const Icon(
                      Icons.book,
                      color: Colors.red,
                    ),
                    title: Text(
                      "RESUME",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionsBody extends StatelessWidget {
  final ScrollController scrollController;
  final int? sectionsLength;
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
