import 'package:flutter/material.dart';
import 'package:provider_state_managementt/provider/count_provider.dart';
import 'package:provider/provider.dart';
class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  Widget build(BuildContext context) {
   final countProvider = Provider.of<CountProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("counter App with Provider"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(countProvider.count.toString(),
        style: TextStyle(fontSize: 50),
        ),

        
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        countProvider.setCount();
      },
      child: Icon(Icons.add),
      ),
    );
  }
}
