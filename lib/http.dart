import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class requestResult {
  bool ok;
  dynamic data;
  requestResult(this.ok, this.data);
}

const protocol = "http";
const domain = "192.168.1.74:3306";

Future<requestResult> http_get(String route, [dynamic data]) async {
  var dataStr = jsonEncode(data);
  var url = "$protocol://$domain/$route?data=$dataStr";
  var result = await http.get(Uri.parse(url));
  return requestResult(true, jsonDecode(result.body));
}

Future<requestResult> http_post(String route, [dynamic data]) async {
  var url = "$protocol://$domain/$route";
  var dataStr = jsonEncode(data);
  var s = Uri.parse(url);
  var result = await http
      .post(s, body: dataStr, headers: {"Content-Type": "application/json"});
  return requestResult(true, jsonDecode(result.body));
}
