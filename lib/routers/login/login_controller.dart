import 'dart:convert';

import 'package:face_app/models/sesion.dart';
import 'package:face_app/models/user.dart';
import 'package:face_app/utils/global_config.dart';
import 'package:http/http.dart' as http;

class LoginController{
  Future<Sesion> signIn(String email, String password) async{
    var url = Uri.http(GlobalConfig.API_URL, 'auth/login');
    var response = await http.post(
      url,
      headers: {
        'content-Type':'application/json'
      },
      body:jsonEncode({"email":email,"password":password}));
      if(response.statusCode!=200){
        throw 'Error en Usuario y/o contraseña';
      }

      var jsonResponse = jsonDecode(response.body);
      var token = jsonResponse['token'];
      var jsonUser = jsonResponse['user'];

      var user = User(jsonUser['id'],jsonUser['name'],jsonUser['email']);
      Sesion.create(token, user);
      return Sesion();
      
  }
}