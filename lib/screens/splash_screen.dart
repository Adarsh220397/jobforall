import 'dart:async';

import 'package:flutter/material.dart';
import 'package:job_for_all/screens/welcome_screen.dart';

import 'package:job_for_all/widgets/app_logo_widget.dart';
import 'package:job_for_all/widgets/app_motto_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late ThemeData themeData;
  @override
  void initState() {
    super.initState();

    startTime();
  }

  @override
  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    return Scaffold(body: SafeArea(child: splashScreenBody()));
  }

  Widget splashScreenBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
          ),
          const Center(child: AppLogoWidget()),
          SizedBox(
            height: MediaQuery.of(context).size.height / 7,
          ),
          AppMottoUI(themeData: themeData),
        ],
      ),
    );
  }

  Future startTime() async {
    var duration = const Duration(seconds: 5);

    return Timer(duration, callBack);
  }

  Future<void> callBack() async {
    await Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
        (Route<dynamic> route) => false);
  }
}
