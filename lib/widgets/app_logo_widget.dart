import 'package:flutter/material.dart';

class AppLogoWidget extends StatefulWidget {
  const AppLogoWidget({Key? key}) : super(key: key);

  @override
  State<AppLogoWidget> createState() => _AppLogoWidgetState();
}

class _AppLogoWidgetState extends State<AppLogoWidget> {
  @override
  Widget build(BuildContext context) {
    return appLogoUI();
  }

  Widget appLogoUI() {
    return Center(
      child: Container(
          height: 300,
          width: 300,
          alignment: Alignment.center,
          child: Image.asset('assets/imgs/welcomeScreenLogo.png')),
    );
  }
}
