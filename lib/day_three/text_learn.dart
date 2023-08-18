import 'package:flutter/material.dart';

class TextLearn extends StatefulWidget {
  const TextLearn({super.key});

  @override
  State<TextLearn> createState() => _TextLeanState();
}

class _TextLeanState extends State<TextLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text'),
      ),
      body: const Column(
        children: [
          Text(
            'Hello world Hello world Hello world Hello world Hello world Hello world Hello world Hello world Hello world Hello world Hello world',
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
          Text(
            'Hello world',
            textScaleFactor: 2,
          ),
          Text('Hello world',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 18,
                height: 1.2,
              )),
          DefaultTextStyle(
            style: TextStyle(
              fontSize: 50,
            ),
            child: Text.rich(
              TextSpan(children: [
                TextSpan(text: 'hhh hhh hhh', style: TextStyle(color: Colors.red)),
                TextSpan(
                  text: 'ddd dddd',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                TextSpan(
                  text: 'biubiubiu',
                  style: TextStyle(inherit: false, color: Colors.grey),
                )
              ]),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
