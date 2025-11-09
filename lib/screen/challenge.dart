import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_managementt/provider/count_provider.dart';
import 'package:provider_state_managementt/provider/counter_provider.dart';
class Challenge extends StatefulWidget {
  const Challenge({super.key});

  @override
  State<Challenge> createState() => _ChallengeState();
}

class _ChallengeState extends State<Challenge> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(context.watch<CounterProvider>().value.toString()),
            Text(" hy buddy this  is the value of the counter")
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: (){
           context.read<CounterProvider>().incrementCounter();
          }, child: Icon(Icons.add),),
          SizedBox(height: 15,),
          FloatingActionButton(onPressed: (){
            context.read<CounterProvider>().decrementCounter();
          }, child: Icon(Icons.remove),),
        ],
      ),
    );
  }
}
