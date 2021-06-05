import 'package:example/screens/safe_area_with_background.dart';
import 'package:flutter/material.dart';

class ListCustomWidgets extends StatelessWidget {
  static const id = 'LIstCustomWidgets';
  const ListCustomWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('List custom widgets'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Card(
              elevation: 5,
              color: Colors.red,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                leading: Text('-=1=-'),
                title: Text("Safe area with background"),
                onTap: () {
                  Navigator.pushNamed(context, SafeAreaWithBackground.id);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
