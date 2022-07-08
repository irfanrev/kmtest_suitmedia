import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UserController extends GetxController {
  final apiUrl = Uri.parse("https://reqres.in/api/users?page=2");
  final RxString selectedUser = "Selected User Name".obs;

  Future<List<dynamic>> getData() async {
    var res =  await http.get(apiUrl);
    return json.decode(res.body)['data'];
  }
}