import 'package:flutter/foundation.dart';
class CountProvider with ChangeNotifier//change notififier work as set state
{
int _count = 50;
int get count => _count ;
void setCount (){
_count++;
notifyListeners();
}
}