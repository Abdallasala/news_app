import 'dart:convert';

import 'package:http/http.dart' as http;
import '../core/constant/constants.dart';
import '../core/constant/end_points.dart';
import '../models/sources_models.dart';

abstract class AppNetwork {
  static Future<List<Source>?> getsources(String categoryId) async {
    try {
      var queryparmaters = {
        'apiKey': Constants.apiKEY,
        'category': categoryId,
      };
      var url = Uri.https(
        Constants.baseURL,
        EndPoints.endpoints,
        queryparmaters,
      );
      var response = await http.get(url);
      Map<String, dynamic> data = jsonDecode(response.body);
      SourcesModels sourcesModels = SourcesModels.fromjson(data);
      return sourcesModels.sources;
    } catch (e) {
      return null;
    }
  }
}
