import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:job_for_all/utils/size_utils.dart';

class RecentJobsWidget extends StatefulWidget {
  String image;
  num rating;
  num duration;
  num cost;
  String job;
  String description;
  bool bBidderScreen;
  RecentJobsWidget(
      {super.key,
      required this.image,
      required this.rating,
      required this.cost,
      required this.description,
      required this.duration,
      required this.job,
      required this.bBidderScreen});

  @override
  State<RecentJobsWidget> createState() => _RecentJobsWidgetState();
}

class _RecentJobsWidgetState extends State<RecentJobsWidget> {
  late ThemeData themeData;
  @override
  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width > 600
              ? SizeUtils.get(3)
              : SizeUtils.get(2)),
      child: Container(
        height: MediaQuery.of(context).size.width > 600
            ? SizeUtils.get(35)
            : SizeUtils.get(21.25),
        width: MediaQuery.of(context).size.width > 600
            ? SizeUtils.get(180)
            : SizeUtils.get(97.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SizeUtils.get(2.5)),
        ),
        child: Row(children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.width > 600
                      ? SizeUtils.get(40)
                      : SizeUtils.get(25)),
            ),
            child: ClipOval(
              child: Image.asset(
                widget.image,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.width > 600
                ? SizeUtils.get(35)
                : SizeUtils.get(21.25),
            width: MediaQuery.of(context).size.width > 600
                ? SizeUtils.get(130)
                : SizeUtils.get(80),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.width > 600
                      ? SizeUtils.get(4)
                      : SizeUtils.get(2.5)),
            ),
            child: Column(
              children: [
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.job,
                        style: themeData.textTheme.subtitle1!.copyWith(
                            fontSize: MediaQuery.of(context).size.width > 600
                                ? SizeUtils.get(5)
                                : SizeUtils.get(3.5),
                            fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: SizeUtils.get(2)),
                        child: Container(
                          height: MediaQuery.of(context).size.width > 600
                              ? SizeUtils.get(7)
                              : SizeUtils.get(5.25),
                          width: MediaQuery.of(context).size.width > 600
                              ? SizeUtils.get(32)
                              : SizeUtils.get(18.25),
                          decoration: BoxDecoration(
                            color:
                                widget.bBidderScreen ? Colors.red : Colors.blue,
                            borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.width > 600
                                    ? SizeUtils.get(4)
                                    : SizeUtils.get(2.5)),
                          ),
                          child: Center(
                            child: Text(
                              widget.bBidderScreen ? 'Place Bid' : 'Completed',
                              style: themeData.textTheme.subtitle1!.copyWith(
                                  fontSize:
                                      MediaQuery.of(context).size.width > 600
                                          ? SizeUtils.get(4)
                                          : SizeUtils.get(2.5),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: SizeUtils.get(1),
                      ),
                      Text(
                        widget.description,
                        style: themeData.textTheme.subtitle1!.copyWith(
                            fontSize: MediaQuery.of(context).size.width > 600
                                ? SizeUtils.get(4)
                                : SizeUtils.get(2.5),
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: SizeUtils.get(3),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          iconData(
                              widget.rating,
                              Icon(
                                FontAwesomeIcons.hammer,
                                color: const Color.fromRGBO(204, 88, 109, 1),
                                size: MediaQuery.of(context).size.width > 600
                                    ? SizeUtils.get(6)
                                    : SizeUtils.get(3.75),
                              )),
                          iconData(
                              widget.duration,
                              widget.bBidderScreen
                                  ? Icon(
                                      FontAwesomeIcons.solidEye,
                                      color:
                                          const Color.fromRGBO(255, 186, 9, 1),
                                      size: MediaQuery.of(context).size.width >
                                              600
                                          ? SizeUtils.get(6)
                                          : SizeUtils.get(3.75),
                                    )
                                  : Icon(
                                      FontAwesomeIcons.solidClock,
                                      color:
                                          const Color.fromRGBO(54, 200, 2, 1),
                                      size: MediaQuery.of(context).size.width >
                                              600
                                          ? SizeUtils.get(6)
                                          : SizeUtils.get(3.75),
                                    )),
                          iconData(
                              widget.cost,
                              widget.bBidderScreen
                                  ? Icon(
                                      FontAwesomeIcons.solidHeart,
                                      color:
                                          const Color.fromRGBO(224, 3, 228, 1),
                                      size: MediaQuery.of(context).size.width >
                                              600
                                          ? SizeUtils.get(6)
                                          : SizeUtils.get(3.75),
                                    )
                                  : Icon(
                                      FontAwesomeIcons.filterCircleDollar,
                                      color:
                                          const Color.fromRGBO(144, 167, 3, 1),
                                      size: MediaQuery.of(context).size.width >
                                              600
                                          ? SizeUtils.get(6)
                                          : SizeUtils.get(3.75),
                                    )),
                          const SizedBox(
                            width: 15,
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }

  Widget iconData(num text, Icon icon) {
    return Row(
      children: [
        icon,
        const SizedBox(
          width: 5,
        ),
        Text(
          text.toString(),
          style: themeData.textTheme.subtitle1!.copyWith(
              fontSize: SizeUtils.get(3), fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
