import 'package:flutter/material.dart';

import '../modils/loginmodil.dart';
import '../servis/sinupServis.dart';
class myp extends ChangeNotifier
{

  user_model? obj;
  Future<void> signup(name,phone,email,password)async
  {
    await user_services.signup(name, phone, email, password);
    notifyListeners();
  }
  Future<void> login(email,password)async
  {
    obj= await user_services.login(email, password);
    print("provider done");
    notifyListeners();
    }

}