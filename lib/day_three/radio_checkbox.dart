import 'package:flutter/material.dart';

class RadioChecbox extends StatefulWidget {
  const RadioChecbox({super.key});

  @override
  State<RadioChecbox> createState() => _RadioChecboxState();
}

class _RadioChecboxState extends State<RadioChecbox> {
  
  bool radioValue = false;
  bool checkboxValue = true;

  void onSwitchChanged(bool value) {
    setState(() {
      radioValue = value;
    });
  }

  void onCheckboxChanged(bool? value) {
    setState(() {
      checkboxValue = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Button'),
        ),
        body: Column(
          children: [
            Switch(value: radioValue, onChanged: onSwitchChanged),
            Checkbox(value: checkboxValue, onChanged: onCheckboxChanged)
          ],
        ));
  }
}
