import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_managementt/provider/user_provider.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(context.watch<UserProvider>().userName),
      ),
    );
  }
}
