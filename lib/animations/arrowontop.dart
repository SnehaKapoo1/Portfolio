import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';

class ArrowOnTop extends StatefulWidget {
  final VoidCallback? onPressed;

  const ArrowOnTop({Key? key, this.onPressed}) : super(key: key);

  @override
  _ArrowOnTopState createState() => _ArrowOnTopState();
}

class _ArrowOnTopState extends State<ArrowOnTop> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.025),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: widget.onPressed,
            onHover: (isHovering) {
              if (isHovering) {
                setState(() {
                  isHover = true;
                });
              } else {
                setState(() {
                  isHover = false;
                });
              }
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                ),
                boxShadow: isHover
                    ? [
                        const BoxShadow(
                          color: kButtonColor,
                          blurRadius: 12.0,
                          offset: Offset(2.0, 3.0),
                        )
                      ]
                    : [],
              ),
              child: Icon(
                Icons.arrow_drop_up_outlined,
                color: kButtonColor,
                size: MediaQuery.of(context).size.height * 0.05,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
