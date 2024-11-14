import 'package:flutter/material.dart';

import '../modils/dataModils.dart';
import '../servis/logiServis.dart';
class myp2 extends ChangeNotifier
{
  int i=0;
  data_model? obj;
  Future<void> fech()async
  {
    obj=await data_serviecs.get();
    notifyListeners();
    }
}