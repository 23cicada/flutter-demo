import 'package:flutter/material.dart';

class TapBoxBase extends StatelessWidget {
  const TapBoxBase({ super.key, required this.active, required this.onChange });
  final bool active;
  final void Function(bool value) onChange;
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChange(!active),
      child: Container(
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
        child: Center(
          child: Text(
            active ? 'Active' : 'Inactive',
            style: const TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}