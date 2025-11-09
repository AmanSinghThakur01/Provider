import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_managementt/multiprovider/example_one.dart';
import 'package:provider_state_managementt/multiprovider/example_one_provider.dart';
import 'package:provider_state_managementt/provider/count_provider.dart';
import 'package:provider_state_managementt/provider/counter_provider.dart';
import 'package:provider_state_managementt/provider/user_provider.dart';
import 'package:provider_state_managementt/screen/count_example.dart';
import 'package:provider_state_managementt/skeleton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
        ChangeNotifierProvider(create:  (_) => CountProvider()),
        ChangeNotifierProvider(create:  (_) => ExampleOneProvider()),
        ChangeNotifierProvider(create:  (_) => UserProvider()),
        ChangeNotifierProvider(create:  (_) => CounterProvider()),
    ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Skeleton(),
      ),
    );

  }
}
