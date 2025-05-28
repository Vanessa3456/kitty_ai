import 'package:ai_assistance/components.dart';
import 'package:ai_assistance/helper/global.dart';
import 'package:ai_assistance/model/home_type.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    // Pref.showOnboarding = false;
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
   
    // API.getAnswer('Tell me about Vanessa');

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text(
                appName,
                style: TextStyle(
                    color: Colors.brown,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              centerTitle: true,
              backgroundColor: Colors.white,
              elevation: 1,
              actions: [
                IconButton(
                    padding: const EdgeInsets.only(right: 10),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.brightness_4_rounded,
                      color: Colors.brown,
                      size: 26,
                    ))
              ],
            ),
            body: ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: deviceWidth * .04, vertical: deviceHeight * .015),
              children: HomeType.values
                  .map((e) => HomeCard(homeType: e))
                  .toList(), // means run all thevalues in the enum and map them to the homecard
            )));
  }
}
