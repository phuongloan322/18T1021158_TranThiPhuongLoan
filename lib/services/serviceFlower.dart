import 'dart:convert';
import 'package:bai_tap_kiem_tra/models/flower.dart';
import 'package:http/http.dart' as http;

class Service {
  Future<Flower> fetchDataTesla(dynamic s) async {
    String url = s == null
        ? "https://newsapi.org/v2/everything?q=flower&from=2021-10-16&sortBy=publishedAt&apiKey=0d2cdee21d2a4d86958610eb9ea28d3d"
        : s;
    var reponse = await http.get(Uri.parse(url));
    if (reponse.statusCode == 200) {
      var jsonData = json.decode(reponse.body);
      print(jsonData);
      Flower tl = flowerFromJson(reponse.body);
      print(tl);
      return tl;
    } else {
      return throw Exception('Không có dữ liệu');
    }
  }
}
