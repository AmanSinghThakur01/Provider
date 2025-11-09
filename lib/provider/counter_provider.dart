import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier
{
  int  value = 0 ;

  CounterProvider ({
    this.value = 0,
});
  void incrementCounter (){
    value ++;
    notifyListeners();
  }
  void decrementCounter (){
    value --;
    notifyListeners();
  }
}