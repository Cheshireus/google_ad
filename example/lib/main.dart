import 'package:example/screens/list_custom_widgets.dart';
import 'package:example/screens/safe_area_with_background.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.blueGrey),
      routes: {
        ListCustomWidgets.id: (context) => ListCustomWidgets(),
        SafeAreaWithBackground.id: (context) => SafeAreaWithBackground(),
      },
      initialRoute: ListCustomWidgets.id,
    );
  }
}
