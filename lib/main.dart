import 'package:flutter/material.dart';
import 'package:flutter_demo/day_five/fitted_box.dart';
import 'package:flutter_demo/day_five/list_view.dart';
import 'package:flutter_demo/day_five/row_zoom.dart';
import 'package:flutter_demo/day_five/single_child_scroll_view.dart';
import 'package:flutter_demo/day_four/align_learn.dart';
import 'package:flutter_demo/day_four/constraints.dart';
import 'package:flutter_demo/day_four/flex_learn.dart';
import 'package:flutter_demo/day_four/layout_builder.dart';
import 'package:flutter_demo/day_four/row_column.dart';
import 'package:flutter_demo/day_four/stack_learn.dart';
import 'package:flutter_demo/day_four/wrap_learn.dart';
import 'package:flutter_demo/day_three/button_learn.dart';
import 'package:flutter_demo/day_three/form_learn.dart';
import 'package:flutter_demo/day_three/image.dart';
import 'package:flutter_demo/day_three/progress_learn.dart';
import 'package:flutter_demo/day_three/radio_checkbox.dart';
import 'package:flutter_demo/day_three/text_learn.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/': (context) => const Home(),
        '/text': (context) => const TextLearn(),
        '/button': (context) => const ButtonLearn(),
        '/image': (context) => const ImageLearn(),
        '/radio_checkbox': (context) => const RadioChecbox(),
        '/form': (context) => const FormLearn(),
        '/progress': (context) => const ProgressLearn(),
        '/constraints': (context) => const ConstraintsLearn(),
        '/row_column': (context) => const RowColumn(),
        '/flex_learn': (context) => const FlexLearn(),
        '/wrap': (context) => const WrapLearn(),
        '/stack': (context) => const StackLearn(),
        '/align': (context) => const AlignLearn(),
        '/layout_builder': (context) => const LayoutBuilderRoute(),
        '/fitted_box': (context) => const FittedBoxLearn(),
        '/row_zoom': (context) => const RowZoomLearn(),
        '/single_child_scroll_view': (context) => const SingleChildScrollViewLearn(),
        '/list_view': (context) => const ListViewLearn()
      },
      theme: ThemeData(
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) {
            return const Home();
          },
        );
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  void onPressed(BuildContext context, String url) {
    Navigator.pushNamed(context, url);
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> scrollWidget = [
      {'name': 'SingleChildScrollView', 'url': '/single_child_scroll_view'},
      {'name': 'ListView', 'url': '/list_view'},
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      body: Center(
        child: Row(
          children: [
            Column(
              children: [
                TextButton(
                  child: const Text('Text'),
                  onPressed: () => onPressed(context, '/text'),
                ),
                TextButton(
                  child: const Text('Button'),
                  onPressed: () => onPressed(context, '/button'),
                ),
                TextButton(
                  child: const Text('Image'),
                  onPressed: () => onPressed(context, '/image'),
                ),
                TextButton(
                  child: const Text('Radio&Checkbox'),
                  onPressed: () => onPressed(context, '/radio_checkbox'),
                ),
                TextButton(
                  child: const Text('Form'),
                  onPressed: () => onPressed(context, '/form'),
                ),
                TextButton(
                  child: const Text('Progress'),
                  onPressed: () => onPressed(context, '/progress'),
                ),
                TextButton(
                  child: const Text('Constraints'),
                  onPressed: () => onPressed(context, '/constraints'),
                ),
                TextButton(
                  child: const Text('RowColumn'),
                  onPressed: () => onPressed(context, '/row_column'),
                ),
                TextButton(
                  child: const Text('FlexLearn'),
                  onPressed: () => onPressed(context, '/flex_learn'),
                ),
                TextButton(
                  child: const Text('Wrap'),
                  onPressed: () => onPressed(context, '/wrap'),
                ),
                TextButton(
                  child: const Text('Stack'),
                  onPressed: () => onPressed(context, '/stack'),
                ),
                TextButton(
                  child: const Text('Align'),
                  onPressed: () => onPressed(context, '/align'),
                ),
                TextButton(
                  child: const Text('LayoutBuilder'),
                  onPressed: () => onPressed(context, '/layout_builder'),
                ),
                TextButton(
                  child: const Text('FittedBox'),
                  onPressed: () => onPressed(context, '/fitted_box'),
                ),
                TextButton(
                  child: const Text('RowZoomLearn'),
                  onPressed: () => onPressed(context, '/row_zoom'),
                ),
              ],
            ),
            Column(
              children: scrollWidget
                  .map(
                    (e) => TextButton(
                      child: Text(e['name']!),
                      onPressed: () => onPressed(context, e['url']!),
                    ),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
