import 'package:flutter/material.dart';

// FittedBox 在布局子组件时会忽略其父组件传递的约束，可以允许子组件无限大，
// 即FittedBox 传递给子组件的约束为（0<=width<=double.infinity, 0<= height <=double.infinity）。
// FittedBox 对子组件布局结束后就可以获得子组件真实的大小。
// FittedBox 知道子组件的真实大小也知道他父组件的约束，那么FittedBox 就可以通过指定的适配方式（BoxFit 枚举中指定），
// 让起子组件在 FittedBox 父组件的约束范围内按照指定的方式显示。
class FittedBoxLearn extends StatelessWidget {
  const FittedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FittedBox'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Hello'),
            Container(
              width: 50,
              height: 50,
              color: Colors.red,
              child: FittedBox(
                fit: BoxFit.none,
                // FittedBox 自身还是要遵守其父组件传递的约束
                // 子容器超过父容器大小
                child: Container(width: 60, height: 70, color: Colors.blue),
              ),
            ),
            const Text('Hello'),
            ClipRect(
              child: Container(
                width: 50,
                height: 50,
                color: Colors.red,
                child: FittedBox(
                  fit: BoxFit.none,
                  // FittedBox 自身还是要遵守其父组件传递的约束
                  // 子容器超过父容器大小
                  child: Container(width: 60, height: 70, color: Colors.blue),
                ),
              ),
            ),
            const Text('Flutter'),
            Container(
              width: 50,
              height: 50,
              color: Colors.red,
              child: FittedBox(
                fit: BoxFit.contain,
                // 子容器超过父容器大小
                child: Container(width: 60, height: 70, color: Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
