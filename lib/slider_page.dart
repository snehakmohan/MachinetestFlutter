import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double value =5;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(value: value,
          onChanged: (value){ setState(()=>this.value=value);},
          min: 0,
          max: 10,
          divisions: 10,
          label: value.round().toString(),
          activeColor: Colors.red,
          inactiveColor: Colors.yellow,
        ),

      ],
    );
  }
}