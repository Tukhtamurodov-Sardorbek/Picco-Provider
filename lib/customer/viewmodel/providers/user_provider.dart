import 'package:flutter/material.dart';
import 'package:pipi/models/user_model.dart';
import 'package:pipi/services/hive_service.dart';

class UserProvider with ChangeNotifier {
  UserModel user = HiveService.getUser();

  void setUser(UserModel userModel) {
    user = userModel;
    notifyListeners();
  }

  setPhoneNumber(String phone) {
    user.phoneNumber = phone;
    notifyListeners();
  }

  setEmail(String email) {
    user.email = email;
    notifyListeners();
  }

  setRole(String role){
    user.role = role;
    notifyListeners();
  }
}
