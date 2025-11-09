import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_managementt/provider/user_provider.dart';
class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  TextEditingController mycontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: mycontroller,
              decoration: InputDecoration(
                labelText: 'change your homescreen name',
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(onPressed: (){
              context.read<UserProvider>().changeUserName(newUserName: mycontroller.text.toString());
              FocusManager.instance.primaryFocus?.unfocus();
              mycontroller.clear();

            }, child: Text(" done"))
          ],
        ),
      ),
    );
  }
}
