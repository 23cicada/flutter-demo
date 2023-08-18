import 'package:flutter/material.dart';
import 'package:flutter_demo/day_two/tap_box_base.dart';

class TapBoxA extends StatefulWidget {
  const TapBoxA({super.key});

  @override
  State<StatefulWidget> createState() => _TapBoxAState();
}

class _TapBoxAState extends State<TapBoxA> {
  bool _active = false;

  void onChange(bool params) => setState(() => _active = params);

  @override
  Widget build(BuildContext context) {
    return TapBoxBase(active: _active, onChange: onChange);
  }
}
