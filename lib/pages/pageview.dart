import 'package:flutter/material.dart';
import 'package:portfolio/pages/project/projectpage.dart';
import 'about/about.dart';
import 'contacts/contact.dart';
import 'home/home.dart';
class PageViewExample extends StatelessWidget {
  const PageViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      controller: controller,
      scrollDirection: Axis.vertical,
      children: const [
        HomePage(),
        AboutPage(),
        ProjectPage(),
        ContactPage()
      ],
    );
  }
}
