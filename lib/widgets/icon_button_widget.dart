import 'package:flutter/material.dart';

class IconButtonWidget extends StatefulWidget {
  Widget icon;
  VoidCallback onPressed;
  IconButtonWidget({Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  @override
  State<IconButtonWidget> createState() => _IconButtonWidgetState();
}

class _IconButtonWidgetState extends State<IconButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return iconButtonUI();
  }

  Widget iconButtonUI() {
    return IconButton(
      icon: widget.icon,
      onPressed: widget.onPressed,
    );
  }
}
