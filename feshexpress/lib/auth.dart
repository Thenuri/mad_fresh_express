import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:device_info/device_info.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'utils/constants.dart';

class AuthProvider extends ChangeNotifier {
  bool _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;

  Future<bool> login(String email, String password) async {
    print('login');
    // final response = await http.get(Uri.parse('http://10.0.2.2:8000/api/hello'));

    final response = await http.post(Uri.parse('http://10.0.2.2:8000/api/login'), body: {
      'email': email,
      'password': password,
      'device_name': await getDeviceId(),
    }, headers: {
      'Accept': 'application/json',
    });

    if (response.statusCode == 200) {
      print('works');
      print(response.body);
      
      String token = response.body;
      await saveToken(token);
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

// function that accepts return type of a bool and string as a array




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

    String token = response.body;
    await saveToken(token);
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
  final storage = new FlutterSecureStorage();
  await storage.write(key: 'apiToken', value: token);
}
  // Future<void> saveToken(String token) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.setString('token', token);
  // }

  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  Future<void> logout() async {
  _isAuthenticated = false;
  notifyListeners();

  final prefs = FlutterSecureStorage();
  await prefs.deleteAll();
}
}




