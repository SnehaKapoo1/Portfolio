import 'package:flutter/material.dart';

class EntranceFader extends StatefulWidget {
  final Widget child;
  final Duration delay;
  final Duration duration;
  final Offset offset;

  const EntranceFader(
      {Key? key,
      required this.child,
      this.delay = const Duration(milliseconds: 0),
      this.duration = const Duration(milliseconds: 400),
      this.offset = const Offset(0.0, 32.0)})
      : super(key: key);

  @override
  _EntranceFaderState createState() => _EntranceFaderState();
}

class _EntranceFaderState extends State<EntranceFader>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _dxAnimation;
  late Animation _dyAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: widget.duration);
    _dxAnimation =
        Tween(begin: widget.offset.dx, end: 0.0).animate(_animationController);
    _dyAnimation =
        Tween(begin: widget.offset.dy, end: 0.0).animate(_animationController);
    Future.delayed(widget.delay, () {
      if (mounted) {
        _animationController.forward();
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) => Opacity(
        opacity: _animationController.value,
        child: Transform.translate(
          offset: Offset(_dxAnimation.value, _dyAnimation.value),
          child: widget.child,
        ),
      ),
    );
  }
}
