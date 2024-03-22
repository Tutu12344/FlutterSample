import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    int count = Provider.of<int>(context);
    String message = Provider.of<String>(context);
    return Text(
      "$message\nCounit is $count",
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
