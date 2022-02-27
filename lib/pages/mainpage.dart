import 'package:flutter/material.dart';
import 'package:portfolio/pages/project/projectpage.dart';
import 'about/about.dart';
import 'contacts/contact.dart';
import 'home/home.dart';
class MainSection extends StatelessWidget {
   MainSection({Key? key}) : super(key: key);
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
     } else {
       return Container();
     }
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _sectionsName.length,
          itemBuilder: (BuildContext context, int index){
            return sectionWidget(index);
          }
      ),
    );
  }
}
