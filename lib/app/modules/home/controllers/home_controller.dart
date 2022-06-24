import 'dart:convert';

import 'package:covid19_information/app/data/models/covid19_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  //TODO: Implement HomeController

  Future<List<CovidModels>> getAllDataCovid() async {
    Uri url = Uri.parse("https://data.covid19.go.id/public/api/prov.json");
    var response = await http.get(url);
    List? data =
        (jsonDecode(response.body) as Map<String, dynamic>)["list_data"];
    // print(data);
    return data!.map((e) => CovidModels.fromJson(e)).toList();
  }
}
