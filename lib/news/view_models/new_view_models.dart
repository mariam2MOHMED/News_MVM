import 'package:flutter/material.dart';
import 'package:news_app_mvm/news/data/new_data_sources.dart';
import 'package:news_app_mvm/news/models/news_response.dart';

class NewsViewModel with ChangeNotifier{
  final dataSources=NewsDataSources();
  List<Articles>news=[];
  String? errorMsg;bool isLoading=false;
  Future<void>getNews({String? sourceId,String? query})async{
isLoading=true;notifyListeners();
 try{final response=  await dataSources.getNews(sourceId: sourceId);
 if(response.status=='ok'||response.articles!=null){
   news=response.articles??[];
 }else {
   errorMsg="No News Available";
 }
 }
 catch(error){errorMsg=error.toString();}
isLoading=false;notifyListeners();
  }
}