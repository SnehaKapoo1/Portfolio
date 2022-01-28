import 'package:flutter/cupertino.dart';

class MainSection extends StatefulWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  _MainSectionState createState() => _MainSectionState();
}

class _MainSectionState extends State<MainSection> {

  final ScrollController _scrollController = ScrollController();
  List<String> _sectionName =[
    "Home",
    "About"
  ];


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
