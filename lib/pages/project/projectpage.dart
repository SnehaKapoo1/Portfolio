import 'package:flutter/material.dart';
import 'package:portfolio/pages/project/projectdesktop.dart';
import 'package:portfolio/pages/project/projectmobile.dart';
import 'package:responsive_builder/responsive_builder.dart';
class ProjectPage extends StatefulWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
        mobile: const ProjectMobile(),
        desktop: const ProjectDesktop(),
    );
  }
}
