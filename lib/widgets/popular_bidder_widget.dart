import 'package:flutter/material.dart';
import 'package:job_for_all/utils/size_utils.dart';

class PopularBidderWidget extends StatefulWidget {
  String image;
  String text;
  num rating;
  String job;
  Color color;
  PopularBidderWidget({
    super.key,
    required this.image,
    required this.text,
    required this.rating,
    required this.job,
    required this.color,
  });

  @override
  State<PopularBidderWidget> createState() => _PopularBidderWidgetState();
}

class _PopularBidderWidgetState extends State<PopularBidderWidget> {
  late ThemeData themeData;
  @override
  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    return Padding(
      padding: EdgeInsets.all(SizeUtils.get(2)),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width > 600
                ? SizeUtils.get(7)
                : SizeUtils.get(3.75),
            width: MediaQuery.of(context).size.width > 600
                ? SizeUtils.get(35)
                : SizeUtils.get(22.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 10.0,
                ),
                Text(
                  widget.rating.toString(),
                  style: themeData.textTheme.subtitle1!
                      .copyWith(fontSize: SizeUtils.get(2.5)),
                )
              ],
            ),
          ),
          Container(
            height: SizeUtils.get(31.25),
            width: MediaQuery.of(context).size.width > 600
                ? SizeUtils.get(35)
                : SizeUtils.get(22.75),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(SizeUtils.get(2.5)),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: SizeUtils.get(6.25),
                  child: Container(
                    height: SizeUtils.get(18.75),
                    width: MediaQuery.of(context).size.width > 600
                        ? SizeUtils.get(35)
                        : SizeUtils.get(22.75),
                    decoration: BoxDecoration(
                      color: widget.color,
                      borderRadius: BorderRadius.circular(SizeUtils.get(2.5)),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: SizeUtils.get(3.75),
                          ),
                          Flexible(
                            flex: 1,
                            child: Text(
                              widget.text,
                              style: themeData.textTheme.subtitle1!.copyWith(
                                  color: Colors.white,
                                  fontSize: SizeUtils.get(2.5),
                                  fontWeight: FontWeight.w600),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Text(
                              widget.job,
                              style: themeData.textTheme.subtitle1!.copyWith(
                                  color: Colors.white,
                                  fontSize: SizeUtils.get(2.5),
                                  fontWeight: FontWeight.w400),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width > 600
                      ? SizeUtils.get(11)
                      : SizeUtils.get(4.75),
                  child: ClipOval(
                    child: Image.asset(
                      widget.image,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
