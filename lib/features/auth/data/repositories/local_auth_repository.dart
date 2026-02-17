import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalAuthRepository {
 late SharedPreferences _sharedPreferences;
 LocalAuthRepository(this._sharedPreferences);
  
  void setToken(String? token){
    if(token !=null){
      _sharedPreferences.setString("userToken", token);
    }
  }
   void setRefreshToken(String? token){
    if(token !=null){
      _sharedPreferences.setString("refreshToken", token);
    }
  }
  void setUserId(String? userId){
    if(userId !=null){
      _sharedPreferences.setString("_id", userId);
    }
  }
  String? getUserToken(){
    return _sharedPreferences.getString("userToken");
  }
    String? getRefreshToken(){
    return _sharedPreferences.getString("refreshToken");
  }

 String? getUserId(){
    return _sharedPreferences.getString("_id");
  }

 

  Future<void> logOut(BuildContext context) async {
    _sharedPreferences.clear();

    Navigator.pushNamed(context, "/signinscreen");
  }
  Future<void> clearTokens() async {
   _sharedPreferences.remove("userToken");
   _sharedPreferences.remove("refreshToken");
      _sharedPreferences.remove("userId");
  }
}
