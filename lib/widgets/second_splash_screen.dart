import 'package:flutter/material.dart';

///основанно на https://pub.dev/packages/flutter_native_splash
///рекомендации вторичный Splash Screen
class SecondSplashScreen extends StatelessWidget {
  final Widget splashApp;
  final Widget app;
  final int secondDelay;

  const SecondSplashScreen({
    Key? key,
    required this.splashApp,
    required this.app,
    this.secondDelay = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Replace the secondDelay second delay with your initialization code:
      future: Future.delayed(Duration(seconds: secondDelay)),
      builder: (context, AsyncSnapshot snapshot) {
        // Show splash screen while waiting for app resources to load:
        if (snapshot.connectionState == ConnectionState.waiting) {
          return splashApp;
        } else {
          // Loading is done, return the app:
          return MaterialApp(
            home: app,
          );
        }
      },
    );
  }
}
