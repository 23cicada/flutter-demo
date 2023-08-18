import 'package:flutter/material.dart';

class ButtonLearn extends StatefulWidget {
  const ButtonLearn({super.key});

  @override
  State<ButtonLearn> createState() => _ButtonLearn();
}

class _ButtonLearn extends State<ButtonLearn> {
  void onPressed() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Button'),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: onPressed,
              child: const Text('ElevatedButton'),
            ),
            TextButton(onPressed: onPressed, child: const Text('TextButton')),
            OutlinedButton(onPressed: onPressed, child: const Text('OutlineButton')),
            IconButton(onPressed: onPressed, icon: const Icon(Icons.dangerous_rounded)),
            IconButton(onPressed: onPressed, icon: const Icon(Icons.fingerprint)),
            OutlinedButton.icon(onPressed: onPressed, icon: const Icon(Icons.add), label: const Text('哈哈哈')),
            ElevatedButton.icon(
              onPressed: onPressed,
              label: const Text('发送'),
              icon: const Icon(Icons.send),
            ),
          ],
        ));
  }
}
