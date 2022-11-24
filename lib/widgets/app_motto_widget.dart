import 'package:flutter/material.dart';

class AppMottoUI extends StatelessWidget {
  const AppMottoUI({
    Key? key,
    required this.themeData,
  }) : super(key: key);

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Building a community to get work done ! \nNo job or Skill is too small!',
      style: themeData.textTheme.subtitle1!.copyWith(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        height: 1.3,
      ),
      textAlign: TextAlign.center,
    );
  }
}
