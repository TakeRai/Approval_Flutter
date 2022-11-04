

import 'package:flutter/material.dart';
import 'package:newchat/model/Model.dart';

class ViewModel extends ChangeNotifier{
  Model m = Model(
    TextEditingController(text: ""),
  );

  void textChange(String text){
    m.text.text = text;
  }
}