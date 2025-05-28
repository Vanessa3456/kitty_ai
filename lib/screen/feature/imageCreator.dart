import 'package:flutter/material.dart';

class ImageCreator extends StatefulWidget {
  const ImageCreator({super.key});

  @override
  State<ImageCreator> createState() => _ImageCreatorState();
}

class _ImageCreatorState extends State<ImageCreator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Create images  with Kitty',
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
