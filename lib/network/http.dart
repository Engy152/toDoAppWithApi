import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
class Api{
  Future<http.Response> get({required String url}) async
  {
    return await http.get(Uri.parse(url));
  }
}
