import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'mydata.dart';
import 'myslider.dart';

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
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => MyData(),
      child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<MyData>(
                builder: (context, mydata, _) => Text(
                  mydata.value.toStringAsFixed(2),
                  style: const TextStyle(fontSize: 100),
                ),
              ),
              const MySlider(),
            ],
          )),
    );
  }
}
