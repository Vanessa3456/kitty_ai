import 'package:flutter/material.dart';

class LangTranslator extends StatefulWidget {
  const LangTranslator({super.key});

  @override
  State<LangTranslator> createState() => _LangTranslatorState();
}

class _LangTranslatorState extends State<LangTranslator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Let's translate",
            style: TextStyle(
                color: Colors.brown, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 1,
        ),
        body: ListView(
          children: [],
        ));
  }
}
