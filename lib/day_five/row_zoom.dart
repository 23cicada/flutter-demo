import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RowZoomLearn extends StatelessWidget {
  const RowZoomLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RowZoomLearn'),
      ),
      body: Column(
        children: [
          createRow('biubiubiubiubiubiubiubiu'), // 超出屏幕宽度时，会溢出

          FittedBox(
            child: createRow('biubiubiubiubiubiubiubiu'),
          ), // 超出屏幕宽度，按比例缩放至一行显示

          // Row 在进行布局时会拿到父组件的约束，
          // 如果约束的 maxWidth 不是无限大，Row 的宽度为 maxWidth；
          // 但如果 maxWidth 为无限大时，就无法在进行分割了，所以此时 Row 就会将子组件的宽度之和作为自己的宽度。
          createRow(
              'Helow Flutter'), // 此时父组件传给 Row 的约束的 maxWidth 为屏幕宽度，此时，Row 的宽度也就是屏幕宽度
          FittedBox(
            child: createRow('Helow Flutter'),
          ), // 而当被FittedBox 包裹时，FittedBox 传给 Row 的约束的 maxWidth 为无限大（double.infinity），因此Row 的最终宽度就是子组件的宽度之和。

          // 将最小宽度（minWidth）约束指定为屏幕宽度
          createFittedBox(createRow('Helow Flutter'))
        ],
      ),
    );
  }
}

Widget createFittedBox(Widget child) {
  return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      return FittedBox(
        child: Container(
          constraints: BoxConstraints(
            // maxWidth: double.infinity,
            minWidth: constraints.maxWidth
          ),
          child: child,
        ),
      );
    },
  );
}

Widget createRow(String text) {
  Widget child = Text(text);

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [child, child, child, child],
  );
}
