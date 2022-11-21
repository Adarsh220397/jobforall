import 'package:flutter/material.dart';

class AppMottoUI extends StatelessWidget {
  const AppMottoUI({
    Key? key,
    required this.themeData,
  }) : super(key: key);

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Building a community to get work done !',
          style: themeData.textTheme.subtitle1!
              .copyWith(color: Colors.white, fontSize: 20),
        ),
        Text(
          'No job or Skill is too small',
          style: themeData.textTheme.subtitle1!
              .copyWith(color: Colors.white, fontSize: 20),
        ),
      ],
    );
  }
}
