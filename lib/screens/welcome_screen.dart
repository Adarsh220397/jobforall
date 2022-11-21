import 'package:flutter/material.dart';
import 'package:job_for_all/screens/bidder_home_screen.dart';
import 'package:job_for_all/screens/poster_home_screen.dart';
import 'package:job_for_all/utils/size_utils.dart';
import 'package:job_for_all/widgets/app_logo_widget.dart';
import 'package:job_for_all/widgets/app_motto_widget.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  late ThemeData themeData;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    return Scaffold(body: SafeArea(child: welcomeScreenBody()));
  }

  Widget welcomeScreenBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          AppMottoUI(themeData: themeData),
          SizedBox(
            height: MediaQuery.of(context).size.height / 9,
          ),
          const Center(child: AppLogoWidget()),
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
          ),
          button(toPosterHomePage, false, 'Poster'),
          const SizedBox(
            height: 20,
          ),
          button(toBidderHomePage, true, 'Bidder'),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  toPosterHomePage() async {
    await Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const PosterHomeScreen()),
        (Route<dynamic> route) => false);
  }

  toBidderHomePage() async {
    await Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const BidderHomeScreen()),
        (Route<dynamic> route) => false);
  }

  Widget button(VoidCallback? onClicked, bool? isSecondary, String text) {
    return MaterialButton(
        minWidth: SizeUtils.get(82.5),
        height: SizeUtils.get(16.25),
        color:
            isSecondary! ? const Color.fromRGBO(29, 32, 97, 1) : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(SizeUtils.get(7.5))),
        ),
        onPressed: onClicked,
        child: Text(
          text,
          style: themeData.textTheme.titleMedium!.copyWith(
              color: isSecondary ? Colors.white : Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: SizeUtils.get(6.25)),
        ));
  }
}
