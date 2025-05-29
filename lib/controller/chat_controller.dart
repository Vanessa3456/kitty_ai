import 'package:ai_assistance/model/message.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
// SET STATE UPDATES THE WHOLE SCREEN UNLIKE GETX
  final textC = TextEditingController();

  final list = <Message>[]
      .obs; // obs means observe the current list and then ui will update automatically

  void askQuestion() {
    if (textC.text.trim().isNotEmpty) {
      list.add(Message(msg: textC.text, msgType: MessageType.user));

      list.add(
          Message(msg: 'I received your message', msgType: MessageType.bot));

      textC.text = '';
    }
  }
}
