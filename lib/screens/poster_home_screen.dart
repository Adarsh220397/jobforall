import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:job_for_all/services/client_service.dart';
import 'package:job_for_all/services/models/category_model.dart';
import 'package:job_for_all/services/models/popular_bidder_model.dart';
import 'package:job_for_all/services/models/recent_job_model.dart';
import 'package:job_for_all/utils/size_utils.dart';
import 'package:job_for_all/widgets/all_categories_widget.dart';
import 'package:job_for_all/widgets/icon_button_widget.dart';
import 'package:job_for_all/widgets/popular_bidder_widget.dart';
import 'package:job_for_all/widgets/recent_jobs_widget.dart';
import 'package:job_for_all/widgets/responsive_widget.dart';
import 'package:job_for_all/widgets/title_text_widget.dart';

import '../widgets/poster_ad_image_widget.dart';

class PosterHomeScreen extends StatefulWidget {
  const PosterHomeScreen({super.key});

  @override
  State<PosterHomeScreen> createState() => _PosterHomeScreenState();
}

class _PosterHomeScreenState extends State<PosterHomeScreen> {
  late ThemeData themeData;
  bool isLoading = false;
  List<AllCategoryModel> allCategoriesList = [];
  List<PopularBidderModel> popularBidderList = [];
  List<RecentJobModel> recentJobsList = [];
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    isLoading = true;
    allCategoriesList = await ClientService.instance.getCategoriesData();
    print(allCategoriesList.length);
    popularBidderList = await ClientService.instance.getPopularBidderData();
    recentJobsList = await ClientService.instance.getRecentJobsData();
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
            body: SafeArea(
                child: ResponsiveWidget(
              mobile: posterScreenBody(),
              tab: posterScreenBody(),
              desktop: posterScreenBody(),
            )),
            backgroundColor: Colors.white);
  }

  onPressBellIcon() async {}
  Widget posterScreenBody() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PosterImageWidget(),
          TitleTextWidget(text: 'All Categories'),
          Wrap(
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: [
              for (AllCategoryModel categories in allCategoriesList)
                AllCategoriesWidget(
                    image: categories.image, text: categories.title)
            ],
          ),
          TitleTextWidget(text: 'Popular Bidder'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (PopularBidderModel categories in popularBidderList)
                  PopularBidderWidget(
                    image: categories.image,
                    text: categories.name,
                    rating: categories.rating,
                    job: categories.job,
                    color: categories.color,
                  )
              ],
            ),
          ),
          TitleTextWidget(text: 'Recent Jobs'),
          for (RecentJobModel categories in recentJobsList)
            RecentJobsWidget(
              cost: categories.cost,
              description: categories.description,
              duration: categories.duration,
              image: categories.image,
              job: categories.job,
              rating: categories.rating,
              bBidderScreen: false,
            )
        ],
      ),
    );
  }
}
