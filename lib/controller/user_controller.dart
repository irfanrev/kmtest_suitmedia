import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UserController extends GetxController {
  final apiUrl = Uri.parse("https://reqres.in/api/users?per_page=15");
  var name = "Selected user name".obs;
  final nameC = TextEditingController();

  Future<List<dynamic>> getData() async {
    var res =  await http.get(apiUrl);
    return json.decode(res.body)['data'];
  }

  onSelectedUser(String f, String l) { 
    var longName = '$f $l';
    return name.value = longName;
     
  }
}