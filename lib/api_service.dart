import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model/apimodel.dart';

class apiCollege with ChangeNotifier {
  Future<List<PragatiCollege>?> getCollege() async {
    var client = http.Client();

    var uri = Uri.parse('https://pragati-api.onrender.com/college');

    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      return pragatiCollegeFromJson(json);
    }
    return null;
  }

  @override
  notifyListeners();
}
