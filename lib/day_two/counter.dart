import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key, this.initValue = 0});

  final int initValue;

  @override
  State<CounterWidget> createState() => _CounterWidgetState();

}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();

    // 与该 State 实例关联的 widget 实例（CounterWidget）
    _counter = widget.initValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: Text('$_counter'),
          onPressed: () => setState(() => ++_counter),
        ),
      ),
    );
  }
}
