import 'package:ai_assistance/model/home_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Lottie.asset('assets/lottie/ai.json', width: width * 0.2);
  }
}

class HomeCard extends StatelessWidget {
  final HomeType homeType;
  const HomeCard({super.key, required this.homeType});

  @override
  Widget build(BuildContext context) {
    Animate.restartOnHotReload = true;
    double width = MediaQuery.of(context).size.width;

    return Card(
        margin: EdgeInsets.only(bottom: width * .02),
        elevation: 0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        color: Colors.brown.withOpacity(.5),
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          onTap: homeType.onTap,
          child: homeType.leftAlign
              ? Row(
                  children: [
                    Container(
                      width: width * .35,
                      padding: homeType.padding,
                      child: Lottie.asset(
                        'assets/lottie/${homeType.lottie}',
                      ),
                    ),
                    const Spacer(),
                    Text(
                      homeType.title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                  ],
                )
              : Row(
                  children: [
                    const Spacer(),
                    Text(
                      homeType.title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Container(
                      width: width * .35,
                      padding: homeType.padding,
                      child: Lottie.asset(
                        'assets/lottie/${homeType.lottie}',
                      ),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                  ],
                ),
        )).animate().scale(duration: 2.seconds);
  }
}
