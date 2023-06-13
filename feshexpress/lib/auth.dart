import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:device_info/device_info.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import 'utils/constants.dart';

class AuthProvider extends ChangeNotifier {
  bool _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;

  Future<bool> login(String email, String password) async {
    print('login');
    final response = await http.post(
      Uri.parse('http://10.0.2.2:8000/api/login'),
      body: {
        'email': email,
        'password': password,
        'device_name': await getDeviceId(),
      },
      headers: {
        'Accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      print('works');
      print(response.body);

      // String token = response.body;
      // await saveToken(token);

      // String username = ''; // Retrieve the username from the response or any other source
      // await saveUsername(username);
    var responseBodyJson = jsonDecode(response.body);
    var token = responseBodyJson['token'];
    var username = responseBodyJson['username'];

    await saveToken(token);
    await saveUsername(username);
        

    
      _isAuthenticated = true;
      notifyListeners();
      return true;
    }

    if (response.statusCode == 422) {
      print('442');
      return false;
    }

    print('not working');
    print(response);
    return false;
  }

  Future<dynamic> register(
    String name,
    String email,
    String password,
    String confirmPassword,
    String phone,
    String address,
    String dob,
  ) async {
    print('register');

    final response = await http.post(
      Uri.parse('http://10.0.2.2:8000/api/register'),
      body: {
        'name': name,
        'email': email,
        'password': password,
        'ConfirmPassword': confirmPassword,
        'phone': phone,
        'address': address,
        'dob': dob,
        'device_name': await getDeviceId(),
      },
      headers: {
        'Accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      print('Registration successful');
      print(response.body);

      var responseBodyJson = jsonDecode(response.body);
    var token = responseBodyJson['token'];
    var username = responseBodyJson['username'];
   print(responseBodyJson);
    await saveToken(token);
    await saveUsername(username);
      _isAuthenticated = true;
      notifyListeners();
      return true;
    }

    if (response.statusCode == 409) {
      print('You are already a registered user');
      return false;
    }

    print('Registration failed');
    print(response.body);

    return false;
  }

  Future<String?> getDeviceId() async {
    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    try {
      if (Platform.isAndroid) {
        var build = await deviceInfoPlugin.androidInfo;
        return build.androidId;
      } else if (Platform.isIOS) {
        var data = await deviceInfoPlugin.iosInfo;
        return data.identifierForVendor;
      }
    } on PlatformException {
      print('Failed to get platform version');
    }
    return null;
  }

  Future<void> saveToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('apiToken', token);
  
  }

  Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('apiToken');
  }

  Future<bool> logout() async {
  try {
    _isAuthenticated = false;
    notifyListeners();

    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    return true;
  } catch (e) {
    print('Error during logout: $e');
    return false;
  }
}


  Future<String?> getUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('username');
  }

  Future<void> saveUsername(String username) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', username);
  
  }


  






}




