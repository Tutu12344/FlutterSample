import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    int count = Provider.of<int>(context);
    return Text(
      count.toString(),
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
