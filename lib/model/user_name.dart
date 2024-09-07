import 'package:flutter/material.dart';

class UserNameProvider extends ChangeNotifier{

  List<String>? Name;
  int? length;
  // bool isEven = false;

  UserNameProvider({this.Name});

  List<String> get namePrint => Name ?? ["Lion"];
  int get lengthOfList => Name!=null ? Name!.length : 0;

 bool get isEven => (lengthOfList%2 == 0) ? true : false;

  void changeName(String name) async {
    try {
      print("calling...");
      print(name);
      print("NAME : ${name.isEmpty? "fun" : name}");
      if (Name == null)
        Name = [];

      Name?.add(name.isEmpty? "fun" : name);
      notifyListeners();
    } catch (e) {
      print("Exc : $e");
    }
  }
}