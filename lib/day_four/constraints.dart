import 'package:flutter/material.dart';

///上层组件向下层组件传递约束（constraints）条件。
///下层组件确定自己的大小，然后告诉上层组件。注意下层组件的大小必须符合父组件的约束。
///上层组件确定下层组件相对于自身的偏移和确定自身的大小（大多数情况下会根据子组件的大小来确定自身的大小）。
///
class ConstraintsLearn extends StatelessWidget {
  const ConstraintsLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Constraints')),
      body: Column(
        // Column 宽度撑满，因为子组件minWidth: double.infinity
        children: [
          ConstrainedBox(
            // ConstrainedBox 用于对子组件添加额外的约束
            // constraints: const BoxConstraints.expand(), // 尽可能大的用以填充另一个容器
            // constraints: BoxConstraints.tight(const Size(200, 300)), // 固定宽高
            constraints: const BoxConstraints(
              minWidth: double.infinity,
              minHeight: 100,
            ),
            child: TextButton(
              child: const Text('ConstrainedBox'),
              onPressed: () {},
            ),
          ),

          const SizedBox(
            // SizedBox用于给子元素指定固定的宽高
            width: 200,
            height: 200,
            child: CircularProgressIndicator(),
          ),

          // 多重限制（保证父限制与子限制不冲突）
          ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 90,
              minHeight: 20,
            ),
            child: ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 60,
                  minHeight: 60,
                ),
                child: Image.asset(
                  // width: 90, height: 60
                  'images/ronin.jpg',
                  fit: BoxFit.fill,
                  width: 0,
                  height: 0,
                )),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 200,
              maxHeight: 200,
            ),
            child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 400,
                  maxHeight: 100,
                ),
                child: ConstrainedBox(
                  constraints: const BoxConstraints.expand(),
                  child: Image.asset(
                    // width: 200, height: 100
                    'images/ronin.jpg',
                    fit: BoxFit.fill,
                  ),
                )),
          ),

          // UnconstrainedBox “去除”父组件限制的
          ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 90,
              minHeight: 20,
            ),
            child: UnconstrainedBox(
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 60,
                  minHeight: 60,
                ),
                child: Image.asset(
                  // width: 60, height: 60
                  'images/ronin.jpg',
                  fit: BoxFit.fill,
                  width: 0,
                  height: 0,
                ),
              ),
            ),
          ),

          // 如果UnconstrainedBox 的大小超过它父组件约束时，也会导致溢出报错
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 200,
              maxHeight: 200,
            ),
            child: UnconstrainedBox(
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 400,
                  maxHeight: 100,
                ),
                child: ConstrainedBox(
                  constraints: const BoxConstraints.expand(),
                  child: Image.asset(
                    // width: 200, height: 100
                    'images/ronin.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
