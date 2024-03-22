import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'mydata.dart';

class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final mydata = Provider.of<MyData>(context);
    return Slider(
        value: mydata.value, onChanged: (value) => mydata.value = value);
  }
}
