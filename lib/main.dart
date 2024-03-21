import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
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
  int _counter = 0;
  // Stream
  final _counterStream = StreamController<int>();

  // 初期化時にConsumerのコンストラクタにStreamを渡す
  @override
  void initState() {
    super.initState();
    Consumer(_counterStream);
  }

  // 終了時にStreamを解放する
  @override
  void dispose() {
    super.dispose();
    _counterStream.close();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    // カウントアップした後に、Streamにカウンタ値を流す
    _counterStream.sink.add(_counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

// Consumerクラス
class Consumer {
  // コンストラクタでint型のStreamを受け取る
  Consumer(StreamController<int> consumeStream) {
    // Streamをlistenしてデータが来たらターミナルに表示する
    consumeStream.stream.listen((data) async {
      print("consumerが$dataを使ったよ");
    });
  }
}
