import 'package:flutter/material.dart';

class TitleTextWidget extends StatefulWidget {
  String text;
  TitleTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<TitleTextWidget> createState() => _TitleTextWidgetState();
}

class _TitleTextWidgetState extends State<TitleTextWidget> {
  late ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          widget.text,
          style: themeData.textTheme.subtitle1!.copyWith(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
