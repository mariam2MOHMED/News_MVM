import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:news_app_mvm/shared/api_constants.dart';
import 'package:news_app_mvm/sources/data/models/sourcesResponse.dart';

class SourcesDataSources{
   Future<SourceResponse> getSource(String categoryId)async{
    final uri=Uri.https(ApiConstants.baseUrl,
        ApiConstants.endpoint,{
          'apiKey':ApiConstants.apiKey,
          'category':categoryId,

        });
    final response=await http.get(uri);
    final json=jsonDecode(response.body);
    return SourceResponse.fromJson(json);
  }
}