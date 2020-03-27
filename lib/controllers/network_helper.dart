import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/model.dart';

const url = "http://dummy.restapiexample.com/";

class GetEmployee {
  String getPath() {
    return url + "api/v1/employees";
  }

  Future<List<Employees>> getEmployees() async {
    final res = await http.get(getPath());

    if (res.statusCode == 200) {
      var json = jsonDecode(res.body);
      List data = json['data'];
      return data.map((employees) => new Employees.fromJson(employees)).toList();
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}