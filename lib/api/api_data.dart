import 'dart:convert';

import 'package:getapp/models/name.dart';
import 'package:http/http.dart' as http;

List<ListData> data = [];

class GetData {
  Future<List<ListData>> getAPi() async {
    const url = "https://gorest.co.in/public/v2/users";
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List finalList = jsonDecode(response.body);
      data = finalList.map((e) => ListData.fromJson(e)).toList();

      print(response.statusCode);
      print(response.body);

      // final _data = jsonDecode(response.body) as Map<String, dynamic>;
    }
    return data;
  }
}
