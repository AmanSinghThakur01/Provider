import 'package:flutter/material.dart';
class ExampleOne extends StatefulWidget {
  const ExampleOne({super.key});

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  double value =1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" multiprovider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
children: [
  Slider(
    min: 0,
      max: 1,
      value: value, onChanged: (val){
      print(value);
      value = val;
setState(() {

});
  }),
  Row(
    children: [
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.green.withOpacity(value)
          ),
          height: 100,
          child: Center(
            child: Text("Container 1 "),
          ),
        ),
      ),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.red.withOpacity(value)
          ),
          height: 100,
          child: Center(
            child: Text("Container 2"),
          ),
        ),
      )
    ],
  )
],
      ),
    );
  }
}
