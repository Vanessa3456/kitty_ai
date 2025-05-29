import 'package:ai_assistance/model/message.dart';
import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  final Message message;
  const MessageCard({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(15);
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return message.msgType == MessageType.bot
        ? Row(
            children: [
              SizedBox(width: (6 / deviceWidth) * 100),
              CircleAvatar(
                radius: 18,
                backgroundColor: Colors.white,
                child: Image.asset(
                  'assets/images/logoo.png',
                  width: 24,
                ),
              ),
              Container(
                  constraints: BoxConstraints(maxWidth: deviceWidth * .6),
                  margin: EdgeInsets.only(
                      bottom: deviceHeight * .02, left: deviceWidth * .02),
                  padding: EdgeInsets.symmetric(
                      vertical: deviceHeight * .01,
                      horizontal: deviceWidth * .032),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black54,
                      ),
                      borderRadius: const BorderRadius.only(
                          topLeft: radius,
                          topRight: radius,
                          bottomRight: radius)),
                  child: Text(message.msg))
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  constraints: BoxConstraints(maxWidth: deviceWidth * .6),
                  margin: EdgeInsets.only(
                      bottom: deviceHeight * .02, right: deviceWidth * .02),
                  padding: EdgeInsets.symmetric(
                      vertical: deviceHeight * .01,
                      horizontal: deviceWidth * .032),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black54,
                      ),
                      borderRadius: const BorderRadius.only(
                          topLeft: radius,
                          topRight: radius,
                          bottomLeft: radius)),
                  child: Text(
                    message.msg,
                    textAlign: TextAlign.center,
                  )),
              const CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.brown,
                  )),
              SizedBox(width: (6 / deviceWidth) * 100),
            ],
          );
  }
}
