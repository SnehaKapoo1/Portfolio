import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:portfolio/pages/home/homedesktop.dart';
import 'package:portfolio/pages/home/homemobile.dart';
import 'package:portfolio/pages/home/hometab.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
        mobile: HomeMobile(),
        tablet: const HomeTab(),
        desktop: const HomeDesktop(),
      );
  }
}

