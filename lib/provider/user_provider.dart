import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class UserProvider extends ChangeNotifier {
  String userName;


  UserProvider ({
    this.userName = " Mapp"
});


  void changeUserName ({
    required String newUserName ,
}) async {
    userName = newUserName ;
    notifyListeners();
  }






}