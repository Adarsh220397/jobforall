import 'package:flutter/material.dart';

import '../utils/size_utils.dart';

class PosterImageWidget extends StatefulWidget {
  const PosterImageWidget({Key? key}) : super(key: key);

  @override
  State<PosterImageWidget> createState() => _PosterImageWidgetState();
}

class _PosterImageWidgetState extends State<PosterImageWidget> {
  @override
  Widget build(BuildContext context) {
    return posterImageUI();
  }

  Widget posterImageUI() {
    return Center(
      child: Container(
          height: SizeUtils.get(45),
          width: SizeUtils.get(97.5),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(SizeUtils.get(1.5)),
          ),
          child: Image.asset('assets/imgs/poster.png')),
    );
  }
}
