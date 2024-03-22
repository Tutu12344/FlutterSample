import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    print("count:${_counter.toString()}");
  }

  @override
  Widget build(BuildContext context) {
    // InheritedWidget時は、InheritedWidgetのchildがScaffold
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // 使用する箇所の上位にProviderを入れる
      body: Provider<int>.value(
          value: _counter,
          child: Center(
              child: Consumer<int>(
                  builder: (context, value, _) => Text("consume:$value",
                      style: Theme.of(context).textTheme.headline4)))),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
