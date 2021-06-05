import 'package:flutter/material.dart';
import 'package:che_template/che_template.dart';

class SafeAreaWithBackground extends StatelessWidget {
  static const id = "SafeAreaWithBackground()";
  const SafeAreaWithBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WrapperSafeArea(
      // color: Colors.white,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Safe Area with background'),
          centerTitle: true,
        ),
      ),
    );
  }
}
