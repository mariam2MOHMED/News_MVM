import 'package:flutter/cupertino.dart';
import 'package:news_app_mvm/sources/data/data_sources/sources_data_source.dart';
import 'package:news_app_mvm/sources/data/models/sourcesResponse.dart';

class SourcesViewModel with ChangeNotifier{
  final dataSources=SourcesDataSources();
  List<Sources>sources=[];
  bool isloading=false;
  String? errorMsg;
  Future<void> getSources(String categoryId)async{
   isloading=true;notifyListeners();
    try{
     final response=await dataSources.getSource(categoryId);
     if(response.status=='ok' && response.sources!=null){

     sources=response.sources!;

     }else{
       errorMsg='Failed to get sources';
     }

   }catch(e){
     errorMsg=e.toString();
     print("the error is $errorMsg");
   }

   isloading=false;notifyListeners();
  }
}