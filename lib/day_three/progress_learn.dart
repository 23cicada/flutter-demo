import 'package:flutter/material.dart';

class ProgressLearn extends StatefulWidget {
  const ProgressLearn({super.key});

  @override
  State<ProgressLearn> createState() => ProgressLearnState();
}

class ProgressLearnState extends State<ProgressLearn> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Progress'),
        ),
        body: const Column(
          children: [
            LinearProgressIndicator(minHeight: 10,),
            CircularProgressIndicator(strokeWidth: 10,),
            LinearProgressIndicator(value: 0.7,),
            CircularProgressIndicator(value: 0.6),
          ],
        ));
  }
}
