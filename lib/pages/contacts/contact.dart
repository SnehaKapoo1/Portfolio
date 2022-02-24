import 'package:flutter/material.dart';
import 'package:portfolio/pages/contacts/contactmobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'contactdesktop.dart';
class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const ContactMobile(),
      desktop: const ContactDesktop(),
    );
  }
}
