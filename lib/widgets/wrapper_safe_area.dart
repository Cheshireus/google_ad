import 'package:flutter/material.dart';

/// Description Wrapper SafeArea
class WrapperSafeArea extends StatelessWidget {
  final Widget child;
  final Color? color;
  const WrapperSafeArea({Key? key, required this.child, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: child,
      ),
    );
  }
}
