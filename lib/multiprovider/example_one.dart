import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_managementt/multiprovider/example_one_provider.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({super.key});

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ExampleOneProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text("Multiprovider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Slider Consumer
          Consumer<ExampleOneProvider>(
            builder: (context, value, child) {
              return Slider(
                min: 0,
                max: 1,
                value: value.value,
                onChanged: (val) {
                  print(val);
                  value.SetValue(val);
                },
              );
            },
          ),
          // Row with two containers
          Consumer<ExampleOneProvider>(
            builder: (context, value, child) {
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(value.value),
                      ),
                      height: 100,
                      child: Center(
                        child: Text("Container 1"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(value.value),
                      ),
                      height: 100,
                      child: Center(
                        child: Text("Container 2"),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
