import 'dart:convert';

import 'package:news_app_mvm/shared/api_constants.dart';
import 'package:news_app_mvm/news/models/news_response.dart';
import 'package:http/http.dart'as http;
class NewsDataSources{

 Future<NewsResponse> getNews({String? sourceId, String? query})async{
final uri=Uri.https(ApiConstants.baseUrl,
ApiConstants.newendpoint,{
'apiKey':ApiConstants.apiKey,
'sources':sourceId,
     'q':query
});
final response=await http.get(uri);
final json=jsonDecode(response.body);
return NewsResponse.fromJson(json);

}
}