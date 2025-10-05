import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:portfolio/data/model/Project.dart';

import '../../model/Article.dart';

class ApiService {

  String baseUrl = "https://kafri8889.github.io/";

  Future getArticles() async {
    Uri uri = Uri.parse("${baseUrl}data/articles.json");
    Map<String, String> headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      "Access-Control-Allow-Headers": "Access-Control-Allow-Origin, Accept"
    };

    final response = await http.get(uri, headers: headers);

    if (response.statusCode == 200) {
      return articlesFromJson(response.body);
    } else {
      return List.empty();
    }
  }

  Future getProjects() async {
    Uri uri = Uri.parse("${baseUrl}data/projects.json");
    Map<String, String> headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      "Access-Control-Allow-Headers": "Access-Control-Allow-Origin, Accept"
    };

    final response = await http.get(uri, headers: headers);

    if (response.statusCode == 200) {
      return projectsFromJson(response.body);
    } else {
      return List.empty();
    }
  }

  Future getCertificates() async {
    Uri uri = Uri.parse("${baseUrl}data/certificates.json");
    Map<String, String> headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      "Access-Control-Allow-Headers": "Access-Control-Allow-Origin, Accept"
    };

    final response = await http.get(uri, headers: headers);

    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          .map((e) => e.toString())
          .toList();
    } else {
      return List.empty();
    }
  }

}
