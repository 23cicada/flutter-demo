import 'package:flutter/material.dart';

class ImageLearn extends StatefulWidget {
  const ImageLearn({super.key});

  @override
  State<ImageLearn> createState() => _ImageLearn();
}

class _ImageLearn extends State<ImageLearn> {
  void onPressed() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Image'),
        ),
        body: Column(
          children: [
            // Image(image: AssetImage('images/ronin.jpg'), width: 100.0,),
            Image.asset('images/ronin.jpg', width: 200, height: 200, fit: BoxFit.cover),
            Image.network(
              'https://avatars2.githubusercontent.com/u/20411648?s=460&v=4',
               width: 100
            )
          ],
        ));
  }
}
