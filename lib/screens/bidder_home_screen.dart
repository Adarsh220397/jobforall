import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:job_for_all/services/client_service.dart';
import 'package:job_for_all/services/models/job_match_data_model.dart';
import 'package:job_for_all/widgets/icon_button_widget.dart';
import 'package:job_for_all/widgets/recent_jobs_widget.dart';
import 'package:job_for_all/widgets/title_text_widget.dart';

import '../utils/size_utils.dart';
import '../widgets/poster_ad_image_widget.dart';

class BidderHomeScreen extends StatefulWidget {
  const BidderHomeScreen({super.key});

  @override
  State<BidderHomeScreen> createState() => _BidderHomeScreenState();
}

class _BidderHomeScreenState extends State<BidderHomeScreen> {
  late ThemeData themeData;
  List<JobMatchesDataModel> matchingJoblist = [];
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    isLoading = true;
    matchingJoblist = await ClientService.instance.getJobsMatchingData();
    setState(() {});
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    return isLoading
        ? CircularProgressIndicator()
        : Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              actions: [
                IconButtonWidget(
                    icon: const Icon(
                      FontAwesomeIcons.solidBell,
                      color: Colors.black,
                    ),
                    onPressed: onPressBellIcon),
                IconButtonWidget(
                    icon: const Icon(
                      FontAwesomeIcons.alignRight,
                      color: Colors.black,
                    ),
                    onPressed: onPressBellIcon),
              ],
            ),
            body: SafeArea(child: bidderScreenBody()),
            backgroundColor: Color.fromRGBO(245, 245, 245, 1),
          );
  }

  Widget bidderScreenBody() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PosterImageWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleTextWidget(text: 'Jobs matches with you'),
              Padding(
                padding: EdgeInsets.only(right: SizeUtils.get(2)),
                child: Container(
                  height: SizeUtils.get(6.25),
                  width: SizeUtils.get(21.75),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(SizeUtils.get(2.5)),
                  ),
                  child: Center(
                    child: Text(
                      'View all Jobs',
                      style: themeData.textTheme.subtitle1!.copyWith(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ],
          ),
          for (JobMatchesDataModel job in matchingJoblist)
            RecentJobsWidget(
              cost: job.likes,
              description: job.description,
              duration: job.views,
              image: job.image,
              job: job.job,
              rating: job.cost,
              bBidderScreen: true,
            )
        ],
      ),
    );
  }

  onPressBellIcon() async {}
}
