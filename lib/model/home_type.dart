import 'package:ai_assistance/screen/feature/chatbot.dart';
import 'package:ai_assistance/screen/feature/imageCreator.dart';
import 'package:ai_assistance/screen/feature/langtranslator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum HomeType { chatbot, aiImage, aiTranslator }

extension MyHomeType on HomeType {
  String get title => switch (this) {
        HomeType.chatbot => 'AI chatbot',
        HomeType.aiImage => 'AI Image Creator',
        HomeType.aiTranslator => 'Language translator',
      };

  String get lottie => switch (this) {
        HomeType.chatbot => 'Animation2.json',
        HomeType.aiImage => 'ai2.json',
        HomeType.aiTranslator => 'ai.json',
      };

  bool get leftAlign => switch (this) {
        HomeType.chatbot => true,
        HomeType.aiImage => false,
        HomeType.aiTranslator => true,
      };

  EdgeInsets get padding => switch (this) {
        HomeType.chatbot => EdgeInsets.zero,
        HomeType.aiImage => const EdgeInsets.all(20),
        HomeType.aiTranslator => EdgeInsets.zero,
      };

  VoidCallback get onTap => switch (this) {
        HomeType.chatbot => () => Get.to(() => const Chatbot()),
        HomeType.aiImage => () => Get.to(() => const ImageCreator()),
        HomeType.aiTranslator => () => Get.to(() => const LangTranslator()),
      };
}
