import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class Echo extends StatefulWidget {
  const Echo({
    super.key,
    required this.text,
    this.backgroundColor = Colors.grey,
  });

  final String text;
  final Color backgroundColor;

  @override
  State<StatefulWidget> createState() => _Echo();

}

class _Echo extends State<Echo> {
  String _text = '';

  @override
  Widget build(BuildContext context) {
    generateWordPairs().forEach(print);
    return Center(
        child: TextButton(
          child: Text(_text),
          onPressed: (){},
        ),
      );
  }
}