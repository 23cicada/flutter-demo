
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WrapLearn extends StatelessWidget {
  const WrapLearn({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wrap'),),
      body: Wrap(
        direction: Axis.horizontal,
        spacing: 10,
        runSpacing: 10,
        alignment: WrapAlignment.spaceEvenly,
        children: [
          ElevatedButton(onPressed: (){}, child: const Text('biu...biu...biu...')),
          ElevatedButton(onPressed: (){}, child: const Text('da...')),
          ElevatedButton(onPressed: (){}, child: const Text('biu...biu...biu...')),
          ElevatedButton(onPressed: (){}, child: const Text('da...')),
          ElevatedButton(onPressed: (){}, child: const Text('hhh...hhh...')),
          ElevatedButton(onPressed: (){}, child: const Text('ee')),
          ElevatedButton(onPressed: (){}, child: const Text('hhh...hhh...')),
          ElevatedButton(onPressed: (){}, child: const Text('ee')),
        ],
      ),
    );
  }
}