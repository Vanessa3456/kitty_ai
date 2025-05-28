import 'package:ai_assistance/helper/pref.dart';
import 'package:ai_assistance/model/onboard.dart';
import 'package:ai_assistance/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final list = [
    Onboard(
        title: 'Ask me anything',
        subtitle:
            'Kitty is here to help with your question, feel free to ask anything',
        lottie: 'chatbot'),
    Onboard(
        title: 'Imagination to reality',
        subtitle:
            'I am here to assist with turning your imagination to reality',
        lottie: 'ai2')
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final controller = PageController();

    return Scaffold(
      body: PageView.builder(
        controller: controller,
        itemCount: list.length,
        itemBuilder: (ctx, ind) {
          final isLast = ind == list.length - 1;
          return Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.03,
                ),
                Lottie.asset('assets/lottie/${list[ind].lottie}.json',
                    height: height * .6),
                Text(
                  list[ind].title,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      letterSpacing: .5),
                ),
                SizedBox(
                  height: height * .015,
                ),
                Text(
                  textAlign: TextAlign.center,
                  list[ind].subtitle,
                  style: const TextStyle(
                      fontSize: 14.0, letterSpacing: .5, color: Colors.black54),
                ),
                const Spacer(),
                Wrap(spacing: 10, children: [
                  ...List.generate(
                      list.length,
                      (index) => Container(
                            width: index == ind ? 20 : 10,
                            height: height * .008,
                            decoration: BoxDecoration(
                                color:
                                    index == ind ? Colors.brown : Colors.grey,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                          )),
                ]),
                const Spacer(),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        elevation: 2,
                        minimumSize: Size(width * .4, height * .05)),
                    onPressed: () {
                      if (isLast) {
                        Pref.showOnboarding = false;
                        Get.off(() => const Home());
                        // we say off so as to replace the current screen with the mentioned(pushReplacement)
                        // Navigator.of(context).pushReplacement(
                        //     MaterialPageRoute(builder: (_) => const Home()));
                      } else {
                        controller.nextPage(
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.easeInOut);
                      }
                    },
                    child: Text(
                      isLast ? 'Finish' : 'Next',
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    )),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
