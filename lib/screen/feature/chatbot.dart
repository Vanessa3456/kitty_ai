import 'package:ai_assistance/controller/chat_controller.dart';
import 'package:ai_assistance/model/message.dart';
import 'package:ai_assistance/widget/message_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Chatbot extends StatefulWidget {
  const Chatbot({super.key});

  @override
  State<Chatbot> createState() => _ChatbotState();
}

class _ChatbotState extends State<Chatbot> {
  final _c = Get.put(ChatController());
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
            title: const Text(
          'Talk to Kitty',
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: EdgeInsets.symmetric(horizontal: (9 / deviceWidth) * 100),
          child: Row(
            children: [
              Expanded(
                  child: TextFormField(
                controller: _c.textC,
                textAlign: TextAlign.center,
                onTapOutside: (event) => FocusScope.of(context).unfocus(),
                decoration: const InputDecoration(
                    isDense: true,
                    hintText: 'Ask anything',
                    hintStyle: TextStyle(fontSize: 14),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)))),
              )),
              SizedBox(
                width: (7 / deviceWidth) * 100,
              ),
              CircleAvatar(
                radius: 24,
                child: IconButton(
                  onPressed: _c.askQuestion,
                  icon: const Icon(
                    Icons.rocket_launch_rounded,
                    color: Colors.brown,
                    size: 28,
                  ),
                ),
              )
            ],
          ),
        ),
        body: Obx(
          //to update the list automatically use obx to observe the current list for changes
          () => ListView(
            padding: EdgeInsets.only(
                top: deviceHeight * .02, bottom: deviceHeight * .01),
            children: _c.list.map((e) => MessageCard(message: e)).toList(),
          ),
        ));
  }
}
