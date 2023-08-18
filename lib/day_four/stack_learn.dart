import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      // Stack允许子组件堆叠
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              alignment: AlignmentDirectional
                  .center, // 此参数决定如何去对齐没有定位（没有使用Positioned）或部分定位的子组件。
              // 此参数用于确定没有定位的子组件如何去适应Stack的大小
              // StackFit.loose表示使用子组件的大小，StackFit.expand表示扩伸到Stack的大小。
              fit: StackFit.loose,
              children: [
                Image.asset(
                  'images/ronin.jpg',
                  width: 100,
                  height: 100,
                ),
                const TextField(
                  decoration:
                      InputDecoration(labelText: '账号', hintText: '请输入账号'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  label: const Text('发送'),
                  icon: const Icon(Icons.send),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Stack(
              alignment: AlignmentDirectional.center,
              fit: StackFit.loose,
              children: [
                Positioned(
                  top: 0,
                  child: Image.asset(
                    'images/ronin.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
                const TextField(
                  decoration:
                      InputDecoration(labelText: '账号', hintText: '请输入账号'),
                ),
                Positioned(
                  right: 0,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    label: const Text('发送'),
                    icon: const Icon(Icons.send),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
