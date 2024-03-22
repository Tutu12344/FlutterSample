import 'package:flutter/material.dart';
import 'mydata.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//グローバル変数にProviderを定義する
final _mydataProvider =
    StateNotifierProvider<MyData, double>((ref) => MyData());

void main() {
  //1-2 ProviderScopeを設定する
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: const MyContents());
  }
}

//HooksConsumerWidgetを継承するために切り出し
class MyContents extends HookConsumerWidget {
  const MyContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    //ref.watchでプロバイダーにアクセスしスライダー値を管理
    double slidevalue = ref.watch(_mydataProvider);

    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        slidevalue.toStringAsFixed(2),
        style: const TextStyle(fontSize: 100),
      ),
      Slider(
          value: slidevalue,
          onChanged: (value) {
            ref.read(_mydataProvider.notifier).changeState(value);
          }),
    ]);
  }
}
