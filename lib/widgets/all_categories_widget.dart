import 'package:flutter/material.dart';
import 'package:job_for_all/utils/size_utils.dart';

class AllCategoriesWidget extends StatefulWidget {
  String image;
  String text;
  AllCategoriesWidget({super.key, required this.image, required this.text});

  @override
  State<AllCategoriesWidget> createState() => _AllCategoriesWidgetState();
}

class _AllCategoriesWidgetState extends State<AllCategoriesWidget> {
  late ThemeData themeData;
  @override
  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    return Column(
      children: [
        Container(
            height: MediaQuery.of(context).size.width > 600
                ? SizeUtils.get(25)
                : SizeUtils.get(17.5),
            width: MediaQuery.of(context).size.width > 600
                ? SizeUtils.get(35)
                : SizeUtils.get(22),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              //     color: ColorConstants.appCardColor,
              borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.width > 600
                      ? SizeUtils.get(3)
                      : SizeUtils.get(1.5)),
              //  border: Border.all(color: ColorConstants.borderColor, width: 2),
            ),
            child: Image.asset(
              widget.image,
            )),
        Text(
          widget.text,
          style: themeData.textTheme.subtitle1!.copyWith(
              color: Colors.black,
              fontSize: SizeUtils.get(3),
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
